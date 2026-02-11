define([
    'jquery',
    'underscore',
    'backbone',
    'goatApp/model/LessonContentModel',
    'goatApp/view/LessonContentView',
    'goatApp/view/HintView',
    'goatApp/view/HelpControlsView',
    'goatApp/view/UserAndInfoView',
    'goatApp/view/MenuButtonView',
    'goatApp/model/LessonInfoModel'
], function (
    $,
    _,
    Backbone,
    LessonContentModel,
    LessonContentView,
    HintView,
    HelpControlsView,
    UserAndInfoView,
    MenuButtonView,
    LessonInfoModel
) {
    'use strict';

    var Controller = function (options) {
        _.extend(this, Backbone.Events);

        this.lessonContent = new LessonContentModel();
        this.lessonContentView = options.lessonContentView;
        this.titleView = options.titleView;

        this.userAndInfoView = new UserAndInfoView();
        this.menuButtonView = new MenuButtonView();

        this.name = null;
        this.helpsLoaded = {};
    };

    Controller.prototype.start = function () {
        this.listenTo(this.lessonContent, 'content:loaded', this.onContentLoaded);
        this.listenTo(this.lessonContentView, 'assignment:complete', this.updateMenu);
        this.listenTo(this.lessonContentView, 'endpoints:filtered', this.filterPageHints);
    };

    // ----------------------------
    // Lesson loading
    // ----------------------------

    Controller.prototype.loadLesson = function (name, pageNum) {
        if (!name) return;

        if (this.name === name) {
            this._resumeLesson(pageNum);
            return;
        }

        this.name = name;
        this.helpsLoaded = {};
        this.lessonContent.loadData({ name: name });
    };

    Controller.prototype._resumeLesson = function (pageNum) {
        this.listenToOnce(this.lessonHintView, 'hints:showButton', this.onShowHintsButton);
        this.listenTo(this.lessonHintView, 'hints:hideButton', this.onHideHintsButton);

        this.lessonContentView.navToPage(pageNum);
        this.lessonHintView.hideHints();
        this.lessonHintView.showFirstHint();
        this.titleView.render(this.lessonInfoModel.get('lessonTitle'));
    };

    // ----------------------------
    // Content loaded
    // ----------------------------

    Controller.prototype.onContentLoaded = function (loadHelps) {
        if (!loadHelps) return;

        this.lessonInfoModel = new LessonInfoModel({
            lesson: loadHelps.urlRoot
        });

        this.listenTo(this.lessonInfoModel, 'info:loaded', this.onInfoLoaded);

        this.lessonContentView.model = this.lessonContent;
        this.lessonContentView.render();

        this._createLessonHintView();

        $('.lesson-help').hide();
    };

    Controller.prototype.onInfoLoaded = function () {
        this._createHelpControls();
        this.showHintsView();
        this.titleView.render(this.lessonInfoModel.get('lessonTitle'));
    };

    // ----------------------------
    // Views creation
    // ----------------------------

    Controller.prototype._createHelpControls = function () {
        if (this.helpControlsView) {
            this.helpControlsView.remove();
            this.stopListening(this.helpControlsView);
        }

        this.helpControlsView = new HelpControlsView();

        this.listenTo(this.helpControlsView, 'hints:show', this.showHintsView);
        this.listenTo(this.helpControlsView, 'lesson:restart', this.restartLesson);

        this.helpControlsView.render();
    };

    Controller.prototype._createLessonHintView = function () {
        if (this.lessonHintView) {
            this.lessonHintView.remove();
            this.stopListening(this.lessonHintView);
        }

        this.lessonHintView = new HintView();
    };

    // ----------------------------
    // Hints logic
    // ----------------------------

    Controller.prototype.filterPageHints = function (endpoints) {
        if (this.lessonHintView) {
            this.lessonHintView.filterHints(endpoints);
        }
    };

    Controller.prototype.showHintsView = function () {
        if (!this.lessonHintView) {
            this._createLessonHintView();
        }

        this.lessonHintView.render();

        if (this.lessonHintView.getHintsCount() > 0) {
            this.helpControlsView.showHintsButton();
        } else {
            this.helpControlsView.hideHintsButton();
        }
    };

    Controller.prototype.onHideHintsButton = function () {
        this.helpControlsView.hideHintsButton();
    };

    Controller.prototype.onShowHintsButton = function () {
        this.helpControlsView.showHintsButton();
    };

    // ----------------------------
    // Lesson actions
    // ----------------------------

    Controller.prototype.restartLesson = function () {
        var self = this;

        $.get('service/restartlesson.mvc/' + encodeURIComponent(this.name))
            .done(function () {
                self.loadLesson(self.name);
                self.updateMenu();
                self.lessonContentView.resetLesson();
                self.lessonContentView.updatePagination();
            });
    };

    Controller.prototype.updateMenu = function () {
        this.trigger('menu:reload');
    };

    Controller.prototype.addCurHelpState = function (curHelp) {
        this.helpsLoaded[curHelp.helpElement] = curHelp.value;
    };

    Controller.prototype.testHandler = function (param) {
        this.lessonContentView.showTestParam(param);
    };

    return Controller;
});
