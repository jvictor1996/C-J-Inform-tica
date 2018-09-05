/*!
 * WooCommerce Variation Swatches v1.0.35 
 * 
 * Author: Emran Ahmed ( emran.bd.08@gmail.com ) 
 * Date: 2018-9-1 18:56:14
 * Released under the GPLv3 license.
 */
/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, {
/******/ 				configurable: false,
/******/ 				enumerable: true,
/******/ 				get: getter
/******/ 			});
/******/ 		}
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 12);
/******/ })
/************************************************************************/
/******/ ({

/***/ 12:
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(13);


/***/ }),

/***/ 13:
/***/ (function(module, exports, __webpack_require__) {

(function ($) {

    Promise.resolve().then(function () {
        return __webpack_require__(14);
    }).then(function (_ref) {
        var GWPAdminHelper = _ref.GWPAdminHelper;


        $.fn.gwp_live_feed = function () {
            GWPAdminHelper.LiveFeed();
        };

        $.fn.gwp_deactivate_popup = function ($slug) {
            GWPAdminHelper.DeactivatePopup($slug);
        };
    });
})(jQuery);

/***/ }),

/***/ 14:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "GWPAdminHelper", function() { return GWPAdminHelper; });
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

/*global GWPAdmin*/

var GWPAdminHelper = function ($) {
    var GWPAdminHelper = function () {
        function GWPAdminHelper() {
            _classCallCheck(this, GWPAdminHelper);
        }

        _createClass(GWPAdminHelper, null, [{
            key: 'LiveFeed',
            value: function LiveFeed() {
                $('.gwp-live-feed-close').on('click', function (e) {
                    e.preventDefault();
                    var id = $(this).data('feed_id');
                    wp.ajax.send('gwp_live_feed_close', {
                        data: { id: id }
                    });

                    $(this).parent().fadeOut('fast', function () {
                        $(this).remove();
                    });
                });
            }
        }, {
            key: 'ResetPopupData',
            value: function ResetPopupData() {

                var $button = $('#feedback-dialog-form-button-send');
                $button.prop('disabled', false).text($button.data('defaultvalue')).next().removeClass('visible');
            }
        }, {
            key: 'DeactivatePopup',
            value: function DeactivatePopup(pluginslug) {

                $('#gwp-plugin-deactivate-feedback-dialog-wrapper').dialog({
                    title: GWPAdmin.feedback_title,
                    dialogClass: 'wp-dialog gwp-deactivate-feedback-dialog',
                    autoOpen: false,
                    draggable: false,
                    width: 'auto',
                    modal: true,
                    resizable: false,
                    closeOnEscape: true,
                    position: {
                        my: "center",
                        at: "center",
                        of: window
                    },
                    create: function create() {
                        $('.ui-dialog-titlebar-close').addClass('ui-button');
                    },
                    open: function open() {
                        $('.ui-widget-overlay').bind('click', function () {
                            $('#gwp-plugin-deactivate-feedback-dialog-wrapper').dialog('close');
                        });

                        var opener = $(this).data('gwp-deactivate-dialog-opener');

                        GWPAdminHelper.ResetPopupData();

                        var slug = $(opener).data('slug');
                        var plugin = $(opener).data('plugin');
                        var deactivate_link = $(opener).data('deactivate_link');

                        $('#gwp-plugin-slug').val(slug);
                        $('#feedback-dialog-form-button-skip').prop('href', deactivate_link);
                        $('#feedback-dialog-form-button-send').data('deactivate_link', deactivate_link);
                    }
                });

                $('#feedback-dialog-form-button-send').on('click', function (event) {
                    event.preventDefault();
                    var data = $('#gwp-plugin-deactivate-feedback-dialog-wrapper .feedback-dialog-form').serializeJSON();

                    var link = $(this).data('deactivate_link');

                    if (typeof data['reason_type'] === 'undefined') {
                        return;
                    }

                    $(this).prop('disabled', true).text($(this).data('deactivating')).next().addClass('visible');

                    wp.ajax.send(data.action, {
                        data: data,
                        success: function success(response) {
                            window.location.replace(link);
                        },
                        error: function error() {
                            window.location.replace(link);
                        }
                    });

                    //console.log(data)
                });

                $('#gwp-plugin-deactivate-feedback-dialog-wrapper :radio').on('change', function () {

                    $(this).closest('.feedback-dialog-form-body').find('.feedback-text').prop('disabled', true).hide();

                    $(this).nextAll('.feedback-text').prop('disabled', false).show().focus();
                    // console.log($(this).val())
                });

                $('.wp-list-table.plugins').find('[data-slug="' + pluginslug + '"].active').each(function () {
                    var _this = this;

                    var deactivate_link = $(this).find('.deactivate a').prop('href');

                    $(this).data('deactivate_link', deactivate_link);

                    $(this).find('.deactivate a').on('click', function (event) {
                        event.preventDefault();

                        $('#gwp-plugin-deactivate-feedback-dialog-wrapper').data('gwp-deactivate-dialog-opener', _this).dialog('open');
                    });
                });
            }
        }]);

        return GWPAdminHelper;
    }();

    return GWPAdminHelper;
}(jQuery);



/***/ })

/******/ });
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYXNzZXRzL2pzL2d3cC1hZG1pbi5qcyIsInNvdXJjZXMiOlsid2VicGFjazovLy93ZWJwYWNrL2Jvb3RzdHJhcCA2NDMyOGIyYzhlMzEzNzkwYWI5NiIsIndlYnBhY2s6Ly8vc3JjL2pzL2d3cC1hZG1pbi5qcyIsIndlYnBhY2s6Ly8vc3JjL2pzL0dXUEFkbWluSGVscGVyLmpzIl0sInNvdXJjZXNDb250ZW50IjpbIiBcdC8vIFRoZSBtb2R1bGUgY2FjaGVcbiBcdHZhciBpbnN0YWxsZWRNb2R1bGVzID0ge307XG5cbiBcdC8vIFRoZSByZXF1aXJlIGZ1bmN0aW9uXG4gXHRmdW5jdGlvbiBfX3dlYnBhY2tfcmVxdWlyZV9fKG1vZHVsZUlkKSB7XG5cbiBcdFx0Ly8gQ2hlY2sgaWYgbW9kdWxlIGlzIGluIGNhY2hlXG4gXHRcdGlmKGluc3RhbGxlZE1vZHVsZXNbbW9kdWxlSWRdKSB7XG4gXHRcdFx0cmV0dXJuIGluc3RhbGxlZE1vZHVsZXNbbW9kdWxlSWRdLmV4cG9ydHM7XG4gXHRcdH1cbiBcdFx0Ly8gQ3JlYXRlIGEgbmV3IG1vZHVsZSAoYW5kIHB1dCBpdCBpbnRvIHRoZSBjYWNoZSlcbiBcdFx0dmFyIG1vZHVsZSA9IGluc3RhbGxlZE1vZHVsZXNbbW9kdWxlSWRdID0ge1xuIFx0XHRcdGk6IG1vZHVsZUlkLFxuIFx0XHRcdGw6IGZhbHNlLFxuIFx0XHRcdGV4cG9ydHM6IHt9XG4gXHRcdH07XG5cbiBcdFx0Ly8gRXhlY3V0ZSB0aGUgbW9kdWxlIGZ1bmN0aW9uXG4gXHRcdG1vZHVsZXNbbW9kdWxlSWRdLmNhbGwobW9kdWxlLmV4cG9ydHMsIG1vZHVsZSwgbW9kdWxlLmV4cG9ydHMsIF9fd2VicGFja19yZXF1aXJlX18pO1xuXG4gXHRcdC8vIEZsYWcgdGhlIG1vZHVsZSBhcyBsb2FkZWRcbiBcdFx0bW9kdWxlLmwgPSB0cnVlO1xuXG4gXHRcdC8vIFJldHVybiB0aGUgZXhwb3J0cyBvZiB0aGUgbW9kdWxlXG4gXHRcdHJldHVybiBtb2R1bGUuZXhwb3J0cztcbiBcdH1cblxuXG4gXHQvLyBleHBvc2UgdGhlIG1vZHVsZXMgb2JqZWN0IChfX3dlYnBhY2tfbW9kdWxlc19fKVxuIFx0X193ZWJwYWNrX3JlcXVpcmVfXy5tID0gbW9kdWxlcztcblxuIFx0Ly8gZXhwb3NlIHRoZSBtb2R1bGUgY2FjaGVcbiBcdF9fd2VicGFja19yZXF1aXJlX18uYyA9IGluc3RhbGxlZE1vZHVsZXM7XG5cbiBcdC8vIGRlZmluZSBnZXR0ZXIgZnVuY3Rpb24gZm9yIGhhcm1vbnkgZXhwb3J0c1xuIFx0X193ZWJwYWNrX3JlcXVpcmVfXy5kID0gZnVuY3Rpb24oZXhwb3J0cywgbmFtZSwgZ2V0dGVyKSB7XG4gXHRcdGlmKCFfX3dlYnBhY2tfcmVxdWlyZV9fLm8oZXhwb3J0cywgbmFtZSkpIHtcbiBcdFx0XHRPYmplY3QuZGVmaW5lUHJvcGVydHkoZXhwb3J0cywgbmFtZSwge1xuIFx0XHRcdFx0Y29uZmlndXJhYmxlOiBmYWxzZSxcbiBcdFx0XHRcdGVudW1lcmFibGU6IHRydWUsXG4gXHRcdFx0XHRnZXQ6IGdldHRlclxuIFx0XHRcdH0pO1xuIFx0XHR9XG4gXHR9O1xuXG4gXHQvLyBnZXREZWZhdWx0RXhwb3J0IGZ1bmN0aW9uIGZvciBjb21wYXRpYmlsaXR5IHdpdGggbm9uLWhhcm1vbnkgbW9kdWxlc1xuIFx0X193ZWJwYWNrX3JlcXVpcmVfXy5uID0gZnVuY3Rpb24obW9kdWxlKSB7XG4gXHRcdHZhciBnZXR0ZXIgPSBtb2R1bGUgJiYgbW9kdWxlLl9fZXNNb2R1bGUgP1xuIFx0XHRcdGZ1bmN0aW9uIGdldERlZmF1bHQoKSB7IHJldHVybiBtb2R1bGVbJ2RlZmF1bHQnXTsgfSA6XG4gXHRcdFx0ZnVuY3Rpb24gZ2V0TW9kdWxlRXhwb3J0cygpIHsgcmV0dXJuIG1vZHVsZTsgfTtcbiBcdFx0X193ZWJwYWNrX3JlcXVpcmVfXy5kKGdldHRlciwgJ2EnLCBnZXR0ZXIpO1xuIFx0XHRyZXR1cm4gZ2V0dGVyO1xuIFx0fTtcblxuIFx0Ly8gT2JqZWN0LnByb3RvdHlwZS5oYXNPd25Qcm9wZXJ0eS5jYWxsXG4gXHRfX3dlYnBhY2tfcmVxdWlyZV9fLm8gPSBmdW5jdGlvbihvYmplY3QsIHByb3BlcnR5KSB7IHJldHVybiBPYmplY3QucHJvdG90eXBlLmhhc093blByb3BlcnR5LmNhbGwob2JqZWN0LCBwcm9wZXJ0eSk7IH07XG5cbiBcdC8vIF9fd2VicGFja19wdWJsaWNfcGF0aF9fXG4gXHRfX3dlYnBhY2tfcmVxdWlyZV9fLnAgPSBcIlwiO1xuXG4gXHQvLyBMb2FkIGVudHJ5IG1vZHVsZSBhbmQgcmV0dXJuIGV4cG9ydHNcbiBcdHJldHVybiBfX3dlYnBhY2tfcmVxdWlyZV9fKF9fd2VicGFja19yZXF1aXJlX18ucyA9IDEyKTtcblxuXG5cbi8vIFdFQlBBQ0sgRk9PVEVSIC8vXG4vLyB3ZWJwYWNrL2Jvb3RzdHJhcCA2NDMyOGIyYzhlMzEzNzkwYWI5NiIsIihmdW5jdGlvbiAoJCkge1xuXG4gICAgaW1wb3J0KCcuL0dXUEFkbWluSGVscGVyJykudGhlbigoe0dXUEFkbWluSGVscGVyfSkgPT4ge1xuXG4gICAgICAgICQuZm4uZ3dwX2xpdmVfZmVlZCA9IGZ1bmN0aW9uICgpIHtcbiAgICAgICAgICAgIEdXUEFkbWluSGVscGVyLkxpdmVGZWVkKCk7XG4gICAgICAgIH1cblxuICAgICAgICAkLmZuLmd3cF9kZWFjdGl2YXRlX3BvcHVwID0gZnVuY3Rpb24gKCRzbHVnKSB7XG4gICAgICAgICAgICBHV1BBZG1pbkhlbHBlci5EZWFjdGl2YXRlUG9wdXAoJHNsdWcpO1xuICAgICAgICB9XG4gICAgfSk7XG5cbn0oalF1ZXJ5KSk7XG5cblxuLy8gV0VCUEFDSyBGT09URVIgLy9cbi8vIHNyYy9qcy9nd3AtYWRtaW4uanMiLCIvKmdsb2JhbCBHV1BBZG1pbiovXG5cbmNvbnN0IEdXUEFkbWluSGVscGVyID0gKCgkKSA9PiB7XG4gICAgY2xhc3MgR1dQQWRtaW5IZWxwZXIge1xuXG4gICAgICAgIHN0YXRpYyBMaXZlRmVlZCgpIHtcbiAgICAgICAgICAgICQoJy5nd3AtbGl2ZS1mZWVkLWNsb3NlJykub24oJ2NsaWNrJywgZnVuY3Rpb24gKGUpIHtcbiAgICAgICAgICAgICAgICBlLnByZXZlbnREZWZhdWx0KCk7XG4gICAgICAgICAgICAgICAgbGV0IGlkID0gJCh0aGlzKS5kYXRhKCdmZWVkX2lkJyk7XG4gICAgICAgICAgICAgICAgd3AuYWpheC5zZW5kKCdnd3BfbGl2ZV9mZWVkX2Nsb3NlJywge1xuICAgICAgICAgICAgICAgICAgICBkYXRhIDoge2lkfVxuICAgICAgICAgICAgICAgIH0pO1xuXG4gICAgICAgICAgICAgICAgJCh0aGlzKS5wYXJlbnQoKS5mYWRlT3V0KCdmYXN0JywgZnVuY3Rpb24gKCkge1xuICAgICAgICAgICAgICAgICAgICAkKHRoaXMpLnJlbW92ZSgpXG4gICAgICAgICAgICAgICAgfSlcbiAgICAgICAgICAgIH0pO1xuICAgICAgICB9XG5cbiAgICAgICAgc3RhdGljIFJlc2V0UG9wdXBEYXRhKCkge1xuXG4gICAgICAgICAgICBsZXQgJGJ1dHRvbiA9ICQoJyNmZWVkYmFjay1kaWFsb2ctZm9ybS1idXR0b24tc2VuZCcpO1xuICAgICAgICAgICAgJGJ1dHRvbi5wcm9wKCdkaXNhYmxlZCcsIGZhbHNlKS50ZXh0KCRidXR0b24uZGF0YSgnZGVmYXVsdHZhbHVlJykpLm5leHQoKS5yZW1vdmVDbGFzcygndmlzaWJsZScpO1xuICAgICAgICB9XG5cbiAgICAgICAgc3RhdGljIERlYWN0aXZhdGVQb3B1cChwbHVnaW5zbHVnKSB7XG5cbiAgICAgICAgICAgICQoJyNnd3AtcGx1Z2luLWRlYWN0aXZhdGUtZmVlZGJhY2stZGlhbG9nLXdyYXBwZXInKS5kaWFsb2coe1xuICAgICAgICAgICAgICAgIHRpdGxlICAgICAgICAgOiBHV1BBZG1pbi5mZWVkYmFja190aXRsZSxcbiAgICAgICAgICAgICAgICBkaWFsb2dDbGFzcyAgIDogJ3dwLWRpYWxvZyBnd3AtZGVhY3RpdmF0ZS1mZWVkYmFjay1kaWFsb2cnLFxuICAgICAgICAgICAgICAgIGF1dG9PcGVuICAgICAgOiBmYWxzZSxcbiAgICAgICAgICAgICAgICBkcmFnZ2FibGUgICAgIDogZmFsc2UsXG4gICAgICAgICAgICAgICAgd2lkdGggICAgICAgICA6ICdhdXRvJyxcbiAgICAgICAgICAgICAgICBtb2RhbCAgICAgICAgIDogdHJ1ZSxcbiAgICAgICAgICAgICAgICByZXNpemFibGUgICAgIDogZmFsc2UsXG4gICAgICAgICAgICAgICAgY2xvc2VPbkVzY2FwZSA6IHRydWUsXG4gICAgICAgICAgICAgICAgcG9zaXRpb24gICAgICA6IHtcbiAgICAgICAgICAgICAgICAgICAgbXkgOiBcImNlbnRlclwiLFxuICAgICAgICAgICAgICAgICAgICBhdCA6IFwiY2VudGVyXCIsXG4gICAgICAgICAgICAgICAgICAgIG9mIDogd2luZG93XG4gICAgICAgICAgICAgICAgfSxcbiAgICAgICAgICAgICAgICBjcmVhdGUgICAgICAgIDogZnVuY3Rpb24gKCkge1xuICAgICAgICAgICAgICAgICAgICAkKCcudWktZGlhbG9nLXRpdGxlYmFyLWNsb3NlJykuYWRkQ2xhc3MoJ3VpLWJ1dHRvbicpO1xuICAgICAgICAgICAgICAgIH0sXG4gICAgICAgICAgICAgICAgb3BlbiAgICAgICAgICA6IGZ1bmN0aW9uICgpIHtcbiAgICAgICAgICAgICAgICAgICAgJCgnLnVpLXdpZGdldC1vdmVybGF5JykuYmluZCgnY2xpY2snLCBmdW5jdGlvbiAoKSB7XG4gICAgICAgICAgICAgICAgICAgICAgICAkKCcjZ3dwLXBsdWdpbi1kZWFjdGl2YXRlLWZlZWRiYWNrLWRpYWxvZy13cmFwcGVyJykuZGlhbG9nKCdjbG9zZScpO1xuICAgICAgICAgICAgICAgICAgICB9KTtcblxuICAgICAgICAgICAgICAgICAgICBsZXQgb3BlbmVyID0gJCh0aGlzKS5kYXRhKCdnd3AtZGVhY3RpdmF0ZS1kaWFsb2ctb3BlbmVyJyk7XG5cbiAgICAgICAgICAgICAgICAgICAgR1dQQWRtaW5IZWxwZXIuUmVzZXRQb3B1cERhdGEoKTtcblxuICAgICAgICAgICAgICAgICAgICBsZXQgc2x1ZyAgICAgICAgICAgID0gJChvcGVuZXIpLmRhdGEoJ3NsdWcnKTtcbiAgICAgICAgICAgICAgICAgICAgbGV0IHBsdWdpbiAgICAgICAgICA9ICQob3BlbmVyKS5kYXRhKCdwbHVnaW4nKTtcbiAgICAgICAgICAgICAgICAgICAgbGV0IGRlYWN0aXZhdGVfbGluayA9ICQob3BlbmVyKS5kYXRhKCdkZWFjdGl2YXRlX2xpbmsnKTtcblxuICAgICAgICAgICAgICAgICAgICAkKCcjZ3dwLXBsdWdpbi1zbHVnJykudmFsKHNsdWcpO1xuICAgICAgICAgICAgICAgICAgICAkKCcjZmVlZGJhY2stZGlhbG9nLWZvcm0tYnV0dG9uLXNraXAnKS5wcm9wKCdocmVmJywgZGVhY3RpdmF0ZV9saW5rKVxuICAgICAgICAgICAgICAgICAgICAkKCcjZmVlZGJhY2stZGlhbG9nLWZvcm0tYnV0dG9uLXNlbmQnKS5kYXRhKCdkZWFjdGl2YXRlX2xpbmsnLCBkZWFjdGl2YXRlX2xpbmspXG5cbiAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9KTtcblxuICAgICAgICAgICAgJCgnI2ZlZWRiYWNrLWRpYWxvZy1mb3JtLWJ1dHRvbi1zZW5kJykub24oJ2NsaWNrJywgZnVuY3Rpb24gKGV2ZW50KSB7XG4gICAgICAgICAgICAgICAgZXZlbnQucHJldmVudERlZmF1bHQoKTtcbiAgICAgICAgICAgICAgICBsZXQgZGF0YSA9ICQoJyNnd3AtcGx1Z2luLWRlYWN0aXZhdGUtZmVlZGJhY2stZGlhbG9nLXdyYXBwZXIgLmZlZWRiYWNrLWRpYWxvZy1mb3JtJykuc2VyaWFsaXplSlNPTigpO1xuXG4gICAgICAgICAgICAgICAgbGV0IGxpbmsgPSAkKHRoaXMpLmRhdGEoJ2RlYWN0aXZhdGVfbGluaycpO1xuXG4gICAgICAgICAgICAgICAgaWYgKHR5cGVvZiBkYXRhWydyZWFzb25fdHlwZSddID09PSAndW5kZWZpbmVkJykge1xuICAgICAgICAgICAgICAgICAgICByZXR1cm47XG4gICAgICAgICAgICAgICAgfVxuXG4gICAgICAgICAgICAgICAgJCh0aGlzKS5wcm9wKCdkaXNhYmxlZCcsIHRydWUpLnRleHQoJCh0aGlzKS5kYXRhKCdkZWFjdGl2YXRpbmcnKSkubmV4dCgpLmFkZENsYXNzKCd2aXNpYmxlJyk7XG5cbiAgICAgICAgICAgICAgICB3cC5hamF4LnNlbmQoZGF0YS5hY3Rpb24sIHtcbiAgICAgICAgICAgICAgICAgICAgZGF0YSxcbiAgICAgICAgICAgICAgICAgICAgc3VjY2VzcyA6IChyZXNwb25zZSkgPT4ge1xuICAgICAgICAgICAgICAgICAgICAgICAgd2luZG93LmxvY2F0aW9uLnJlcGxhY2UobGluaylcbiAgICAgICAgICAgICAgICAgICAgfSxcbiAgICAgICAgICAgICAgICAgICAgZXJyb3IgICA6ICgpID0+IHtcbiAgICAgICAgICAgICAgICAgICAgICAgIHdpbmRvdy5sb2NhdGlvbi5yZXBsYWNlKGxpbmspXG4gICAgICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICB9KTtcblxuICAgICAgICAgICAgICAgIC8vY29uc29sZS5sb2coZGF0YSlcbiAgICAgICAgICAgIH0pO1xuXG4gICAgICAgICAgICAkKCcjZ3dwLXBsdWdpbi1kZWFjdGl2YXRlLWZlZWRiYWNrLWRpYWxvZy13cmFwcGVyIDpyYWRpbycpLm9uKCdjaGFuZ2UnLCBmdW5jdGlvbiAoKSB7XG5cbiAgICAgICAgICAgICAgICAkKHRoaXMpLmNsb3Nlc3QoJy5mZWVkYmFjay1kaWFsb2ctZm9ybS1ib2R5JykuZmluZCgnLmZlZWRiYWNrLXRleHQnKS5wcm9wKCdkaXNhYmxlZCcsIHRydWUpLmhpZGUoKTtcblxuICAgICAgICAgICAgICAgICQodGhpcykubmV4dEFsbCgnLmZlZWRiYWNrLXRleHQnKS5wcm9wKCdkaXNhYmxlZCcsIGZhbHNlKS5zaG93KCkuZm9jdXMoKTtcbiAgICAgICAgICAgICAgICAvLyBjb25zb2xlLmxvZygkKHRoaXMpLnZhbCgpKVxuICAgICAgICAgICAgfSk7XG5cbiAgICAgICAgICAgICQoJy53cC1saXN0LXRhYmxlLnBsdWdpbnMnKS5maW5kKCdbZGF0YS1zbHVnPVwiJyArIHBsdWdpbnNsdWcgKyAnXCJdLmFjdGl2ZScpLmVhY2goZnVuY3Rpb24gKCkge1xuXG4gICAgICAgICAgICAgICAgbGV0IGRlYWN0aXZhdGVfbGluayA9ICQodGhpcykuZmluZCgnLmRlYWN0aXZhdGUgYScpLnByb3AoJ2hyZWYnKTtcblxuICAgICAgICAgICAgICAgICQodGhpcykuZGF0YSgnZGVhY3RpdmF0ZV9saW5rJywgZGVhY3RpdmF0ZV9saW5rKTtcblxuICAgICAgICAgICAgICAgICQodGhpcykuZmluZCgnLmRlYWN0aXZhdGUgYScpLm9uKCdjbGljaycsIChldmVudCkgPT4ge1xuICAgICAgICAgICAgICAgICAgICBldmVudC5wcmV2ZW50RGVmYXVsdCgpO1xuXG4gICAgICAgICAgICAgICAgICAgICQoJyNnd3AtcGx1Z2luLWRlYWN0aXZhdGUtZmVlZGJhY2stZGlhbG9nLXdyYXBwZXInKS5kYXRhKCdnd3AtZGVhY3RpdmF0ZS1kaWFsb2ctb3BlbmVyJywgdGhpcykuZGlhbG9nKCdvcGVuJyk7XG4gICAgICAgICAgICAgICAgfSk7XG4gICAgICAgICAgICB9KTtcbiAgICAgICAgfVxuICAgIH1cblxuICAgIHJldHVybiBHV1BBZG1pbkhlbHBlcjtcbn0pKGpRdWVyeSk7XG5cbmV4cG9ydCB7IEdXUEFkbWluSGVscGVyIH07XG5cblxuLy8gV0VCUEFDSyBGT09URVIgLy9cbi8vIHNyYy9qcy9HV1BBZG1pbkhlbHBlci5qcyJdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7QUFBQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBOzs7Ozs7Ozs7Ozs7Ozs7O0FDN0RBO0FBQ0E7QUFDQTtBQUFBO0FBQUE7QUFBQTtBQUNBO0FBQ0E7QUFBQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBRUE7Ozs7Ozs7Ozs7Ozs7O0FDYkE7QUFDQTtBQUNBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFDQTtBQURBO0FBQUE7QUFBQTtBQUlBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFEQTtBQUNBO0FBR0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQWZBO0FBQUE7QUFBQTtBQUNBO0FBa0JBO0FBQ0E7QUFDQTtBQXJCQTtBQUFBO0FBQUE7QUFDQTtBQXdCQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUhBO0FBS0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFFQTtBQWxDQTtBQUNBO0FBb0NBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFQQTtBQUNBO0FBU0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQUE7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUEzR0E7QUFDQTtBQURBO0FBQUE7QUFDQTtBQTZHQTtBQUNBO0FBQ0E7Ozs7O0EiLCJzb3VyY2VSb290IjoiIn0=