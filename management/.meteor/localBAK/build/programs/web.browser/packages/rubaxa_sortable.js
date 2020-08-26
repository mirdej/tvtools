//////////////////////////////////////////////////////////////////////////
//                                                                      //
// This is a generated file. You can view the original                  //
// source in your browser if your browser supports source maps.         //
//                                                                      //
// If you are using Chrome, open the Developer Tools and click the gear //
// icon in its lower right corner. In the General Settings panel, turn  //
// on 'Enable source maps'.                                             //
//                                                                      //
// If you are using Firefox 23, go to `about:config` and set the        //
// `devtools.debugger.source-maps-enabled` preference to true.          //
// (The preference should be on by default in Firefox 24; versions      //
// older than 23 do not support source maps.)                           //
//                                                                      //
//////////////////////////////////////////////////////////////////////////


(function () {

/* Imports */
var Meteor = Package.meteor.Meteor;
var Template = Package.templating.Template;
var Blaze = Package.blaze.Blaze;
var UI = Package.blaze.UI;
var Handlebars = Package.blaze.Handlebars;
var HTML = Package.htmljs.HTML;

/* Package-scope variables */
var Sortable;

(function () {

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                    //
// packages/rubaxa:sortable/Sortable.js                                                                               //
//                                                                                                                    //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                                                                                                      //
/**!                                                                                                                  // 1
 * Sortable                                                                                                           // 2
 * @author	RubaXa   <trash@rubaxa.org>                                                                                // 3
 * @license MIT                                                                                                       // 4
 */                                                                                                                   // 5
                                                                                                                      // 6
                                                                                                                      // 7
(function (factory) {                                                                                                 // 8
	"use strict";                                                                                                        // 9
                                                                                                                      // 10
	if (typeof define === "function" && define.amd) {                                                                    // 11
		define(factory);                                                                                                    // 12
	}                                                                                                                    // 13
	else if (typeof module != "undefined" && typeof module.exports != "undefined") {                                     // 14
		module.exports = factory();                                                                                         // 15
	}                                                                                                                    // 16
	else if (typeof Package !== "undefined") {                                                                           // 17
		Sortable = factory();  // export for Meteor.js                                                                      // 18
	}                                                                                                                    // 19
	else {                                                                                                               // 20
		/* jshint sub:true */                                                                                               // 21
		window["Sortable"] = factory();                                                                                     // 22
	}                                                                                                                    // 23
})(function () {                                                                                                      // 24
	"use strict";                                                                                                        // 25
                                                                                                                      // 26
	var dragEl,                                                                                                          // 27
		ghostEl,                                                                                                            // 28
		cloneEl,                                                                                                            // 29
		rootEl,                                                                                                             // 30
		nextEl,                                                                                                             // 31
                                                                                                                      // 32
		scrollEl,                                                                                                           // 33
		scrollParentEl,                                                                                                     // 34
                                                                                                                      // 35
		lastEl,                                                                                                             // 36
		lastCSS,                                                                                                            // 37
                                                                                                                      // 38
		oldIndex,                                                                                                           // 39
		newIndex,                                                                                                           // 40
                                                                                                                      // 41
		activeGroup,                                                                                                        // 42
		autoScroll = {},                                                                                                    // 43
                                                                                                                      // 44
		tapEvt,                                                                                                             // 45
		touchEvt,                                                                                                           // 46
                                                                                                                      // 47
		/** @const */                                                                                                       // 48
		RSPACE = /\s+/g,                                                                                                    // 49
                                                                                                                      // 50
		expando = 'Sortable' + (new Date).getTime(),                                                                        // 51
                                                                                                                      // 52
		win = window,                                                                                                       // 53
		document = win.document,                                                                                            // 54
		parseInt = win.parseInt,                                                                                            // 55
                                                                                                                      // 56
		supportDraggable = !!('draggable' in document.createElement('div')),                                                // 57
                                                                                                                      // 58
		_silent = false,                                                                                                    // 59
                                                                                                                      // 60
		_dispatchEvent = function (sortable, rootEl, name, targetEl, fromEl, startIndex, newIndex) {                        // 61
			var evt = document.createEvent('Event'),                                                                           // 62
				options = (sortable || rootEl[expando]).options,                                                                  // 63
				onName = 'on' + name.charAt(0).toUpperCase() + name.substr(1);                                                    // 64
                                                                                                                      // 65
			evt.initEvent(name, true, true);                                                                                   // 66
                                                                                                                      // 67
			evt.item = targetEl || rootEl;                                                                                     // 68
			evt.from = fromEl || rootEl;                                                                                       // 69
			evt.clone = cloneEl;                                                                                               // 70
                                                                                                                      // 71
			evt.oldIndex = startIndex;                                                                                         // 72
			evt.newIndex = newIndex;                                                                                           // 73
                                                                                                                      // 74
			if (options[onName]) {                                                                                             // 75
				options[onName].call(sortable, evt);                                                                              // 76
			}                                                                                                                  // 77
                                                                                                                      // 78
			rootEl.dispatchEvent(evt);                                                                                         // 79
		},                                                                                                                  // 80
                                                                                                                      // 81
		abs = Math.abs,                                                                                                     // 82
		slice = [].slice,                                                                                                   // 83
                                                                                                                      // 84
		touchDragOverListeners = [],                                                                                        // 85
                                                                                                                      // 86
		_autoScroll = _throttle(function (/**Event*/evt, /**Object*/options, /**HTMLElement*/rootEl) {                      // 87
			// Bug: https://bugzilla.mozilla.org/show_bug.cgi?id=505521                                                        // 88
			if (rootEl && options.scroll) {                                                                                    // 89
				var el,                                                                                                           // 90
					rect,                                                                                                            // 91
					sens = options.scrollSensitivity,                                                                                // 92
					speed = options.scrollSpeed,                                                                                     // 93
                                                                                                                      // 94
					x = evt.clientX,                                                                                                 // 95
					y = evt.clientY,                                                                                                 // 96
                                                                                                                      // 97
					winWidth = window.innerWidth,                                                                                    // 98
					winHeight = window.innerHeight,                                                                                  // 99
                                                                                                                      // 100
					vx,                                                                                                              // 101
					vy                                                                                                               // 102
				;                                                                                                                 // 103
                                                                                                                      // 104
				// Delect scrollEl                                                                                                // 105
				if (scrollParentEl !== rootEl) {                                                                                  // 106
					scrollEl = options.scroll;                                                                                       // 107
					scrollParentEl = rootEl;                                                                                         // 108
                                                                                                                      // 109
					if (scrollEl === true) {                                                                                         // 110
						scrollEl = rootEl;                                                                                              // 111
                                                                                                                      // 112
						do {                                                                                                            // 113
							if ((scrollEl.offsetWidth < scrollEl.scrollWidth) ||                                                           // 114
								(scrollEl.offsetHeight < scrollEl.scrollHeight)                                                               // 115
							) {                                                                                                            // 116
								break;                                                                                                        // 117
							}                                                                                                              // 118
							/* jshint boss:true */                                                                                         // 119
						} while (scrollEl = scrollEl.parentNode);                                                                       // 120
					}                                                                                                                // 121
				}                                                                                                                 // 122
                                                                                                                      // 123
				if (scrollEl) {                                                                                                   // 124
					el = scrollEl;                                                                                                   // 125
					rect = scrollEl.getBoundingClientRect();                                                                         // 126
					vx = (abs(rect.right - x) <= sens) - (abs(rect.left - x) <= sens);                                               // 127
					vy = (abs(rect.bottom - y) <= sens) - (abs(rect.top - y) <= sens);                                               // 128
				}                                                                                                                 // 129
                                                                                                                      // 130
                                                                                                                      // 131
				if (!(vx || vy)) {                                                                                                // 132
					vx = (winWidth - x <= sens) - (x <= sens);                                                                       // 133
					vy = (winHeight - y <= sens) - (y <= sens);                                                                      // 134
                                                                                                                      // 135
					/* jshint expr:true */                                                                                           // 136
					(vx || vy) && (el = win);                                                                                        // 137
				}                                                                                                                 // 138
                                                                                                                      // 139
                                                                                                                      // 140
				if (autoScroll.vx !== vx || autoScroll.vy !== vy || autoScroll.el !== el) {                                       // 141
					autoScroll.el = el;                                                                                              // 142
					autoScroll.vx = vx;                                                                                              // 143
					autoScroll.vy = vy;                                                                                              // 144
                                                                                                                      // 145
					clearInterval(autoScroll.pid);                                                                                   // 146
                                                                                                                      // 147
					if (el) {                                                                                                        // 148
						autoScroll.pid = setInterval(function () {                                                                      // 149
							if (el === win) {                                                                                              // 150
								win.scrollTo(win.pageXOffset + vx * speed, win.pageYOffset + vy * speed);                                     // 151
							} else {                                                                                                       // 152
								vy && (el.scrollTop += vy * speed);                                                                           // 153
								vx && (el.scrollLeft += vx * speed);                                                                          // 154
							}                                                                                                              // 155
						}, 24);                                                                                                         // 156
					}                                                                                                                // 157
				}                                                                                                                 // 158
			}                                                                                                                  // 159
		}, 30)                                                                                                              // 160
	;                                                                                                                    // 161
                                                                                                                      // 162
                                                                                                                      // 163
                                                                                                                      // 164
	/**                                                                                                                  // 165
	 * @class  Sortable                                                                                                  // 166
	 * @param  {HTMLElement}  el                                                                                         // 167
	 * @param  {Object}       [options]                                                                                  // 168
	 */                                                                                                                  // 169
	function Sortable(el, options) {                                                                                     // 170
		this.el = el; // root element                                                                                       // 171
		this.options = options = _extend({}, options);                                                                      // 172
                                                                                                                      // 173
                                                                                                                      // 174
		// Export instance                                                                                                  // 175
		el[expando] = this;                                                                                                 // 176
                                                                                                                      // 177
                                                                                                                      // 178
		// Default options                                                                                                  // 179
		var defaults = {                                                                                                    // 180
			group: Math.random(),                                                                                              // 181
			sort: true,                                                                                                        // 182
			disabled: false,                                                                                                   // 183
			store: null,                                                                                                       // 184
			handle: null,                                                                                                      // 185
			scroll: true,                                                                                                      // 186
			scrollSensitivity: 30,                                                                                             // 187
			scrollSpeed: 10,                                                                                                   // 188
			draggable: /[uo]l/i.test(el.nodeName) ? 'li' : '>*',                                                               // 189
			ghostClass: 'sortable-ghost',                                                                                      // 190
			ignore: 'a, img',                                                                                                  // 191
			filter: null,                                                                                                      // 192
			animation: 0,                                                                                                      // 193
			setData: function (dataTransfer, dragEl) {                                                                         // 194
				dataTransfer.setData('Text', dragEl.textContent);                                                                 // 195
			},                                                                                                                 // 196
			dropBubble: false,                                                                                                 // 197
			dragoverBubble: false,                                                                                             // 198
			dataIdAttr: 'data-id',                                                                                             // 199
			delay: 0                                                                                                           // 200
		};                                                                                                                  // 201
                                                                                                                      // 202
                                                                                                                      // 203
		// Set default options                                                                                              // 204
		for (var name in defaults) {                                                                                        // 205
			!(name in options) && (options[name] = defaults[name]);                                                            // 206
		}                                                                                                                   // 207
                                                                                                                      // 208
                                                                                                                      // 209
		var group = options.group;                                                                                          // 210
                                                                                                                      // 211
		if (!group || typeof group != 'object') {                                                                           // 212
			group = options.group = { name: group };                                                                           // 213
		}                                                                                                                   // 214
                                                                                                                      // 215
                                                                                                                      // 216
		['pull', 'put'].forEach(function (key) {                                                                            // 217
			if (!(key in group)) {                                                                                             // 218
				group[key] = true;                                                                                                // 219
			}                                                                                                                  // 220
		});                                                                                                                 // 221
                                                                                                                      // 222
                                                                                                                      // 223
		options.groups = ' ' + group.name + (group.put.join ? ' ' + group.put.join(' ') : '') + ' ';                        // 224
                                                                                                                      // 225
                                                                                                                      // 226
		// Bind all private methods                                                                                         // 227
		for (var fn in this) {                                                                                              // 228
			if (fn.charAt(0) === '_') {                                                                                        // 229
				this[fn] = _bind(this, this[fn]);                                                                                 // 230
			}                                                                                                                  // 231
		}                                                                                                                   // 232
                                                                                                                      // 233
                                                                                                                      // 234
		// Bind events                                                                                                      // 235
		_on(el, 'mousedown', this._onTapStart);                                                                             // 236
		_on(el, 'touchstart', this._onTapStart);                                                                            // 237
                                                                                                                      // 238
		_on(el, 'dragover', this);                                                                                          // 239
		_on(el, 'dragenter', this);                                                                                         // 240
                                                                                                                      // 241
		touchDragOverListeners.push(this._onDragOver);                                                                      // 242
                                                                                                                      // 243
		// Restore sorting                                                                                                  // 244
		options.store && this.sort(options.store.get(this));                                                                // 245
	}                                                                                                                    // 246
                                                                                                                      // 247
                                                                                                                      // 248
	Sortable.prototype = /** @lends Sortable.prototype */ {                                                              // 249
		constructor: Sortable,                                                                                              // 250
                                                                                                                      // 251
		_onTapStart: function (/** Event|TouchEvent */evt) {                                                                // 252
			var _this = this,                                                                                                  // 253
				el = this.el,                                                                                                     // 254
				options = this.options,                                                                                           // 255
				type = evt.type,                                                                                                  // 256
				touch = evt.touches && evt.touches[0],                                                                            // 257
				target = (touch || evt).target,                                                                                   // 258
				originalTarget = target,                                                                                          // 259
				filter = options.filter;                                                                                          // 260
                                                                                                                      // 261
                                                                                                                      // 262
			if (type === 'mousedown' && evt.button !== 0 || options.disabled) {                                                // 263
				return; // only left button or enabled                                                                            // 264
			}                                                                                                                  // 265
                                                                                                                      // 266
			target = _closest(target, options.draggable, el);                                                                  // 267
                                                                                                                      // 268
			if (!target) {                                                                                                     // 269
				return;                                                                                                           // 270
			}                                                                                                                  // 271
                                                                                                                      // 272
			// get the index of the dragged element within its parent                                                          // 273
			oldIndex = _index(target);                                                                                         // 274
                                                                                                                      // 275
			// Check filter                                                                                                    // 276
			if (typeof filter === 'function') {                                                                                // 277
				if (filter.call(this, evt, target, this)) {                                                                       // 278
					_dispatchEvent(_this, originalTarget, 'filter', target, el, oldIndex);                                           // 279
					evt.preventDefault();                                                                                            // 280
					return; // cancel dnd                                                                                            // 281
				}                                                                                                                 // 282
			}                                                                                                                  // 283
			else if (filter) {                                                                                                 // 284
				filter = filter.split(',').some(function (criteria) {                                                             // 285
					criteria = _closest(originalTarget, criteria.trim(), el);                                                        // 286
                                                                                                                      // 287
					if (criteria) {                                                                                                  // 288
						_dispatchEvent(_this, criteria, 'filter', target, el, oldIndex);                                                // 289
						return true;                                                                                                    // 290
					}                                                                                                                // 291
				});                                                                                                               // 292
                                                                                                                      // 293
				if (filter) {                                                                                                     // 294
					evt.preventDefault();                                                                                            // 295
					return; // cancel dnd                                                                                            // 296
				}                                                                                                                 // 297
			}                                                                                                                  // 298
                                                                                                                      // 299
                                                                                                                      // 300
			if (options.handle && !_closest(originalTarget, options.handle, el)) {                                             // 301
				return;                                                                                                           // 302
			}                                                                                                                  // 303
                                                                                                                      // 304
                                                                                                                      // 305
			// Prepare `dragstart`                                                                                             // 306
			this._prepareDragStart(evt, touch, target);                                                                        // 307
		},                                                                                                                  // 308
                                                                                                                      // 309
		_prepareDragStart: function (/** Event */evt, /** Touch */touch, /** HTMLElement */target) {                        // 310
			var _this = this,                                                                                                  // 311
				el = _this.el,                                                                                                    // 312
				options = _this.options,                                                                                          // 313
				ownerDocument = el.ownerDocument,                                                                                 // 314
				dragStartFn;                                                                                                      // 315
                                                                                                                      // 316
			if (target && !dragEl && (target.parentNode === el)) {                                                             // 317
				tapEvt = evt;                                                                                                     // 318
                                                                                                                      // 319
				rootEl = el;                                                                                                      // 320
				dragEl = target;                                                                                                  // 321
				nextEl = dragEl.nextSibling;                                                                                      // 322
				activeGroup = options.group;                                                                                      // 323
                                                                                                                      // 324
				dragStartFn = function () {                                                                                       // 325
					// Delayed drag has been triggered                                                                               // 326
					// we can re-enable the events: touchmove/mousemove                                                              // 327
					_this._disableDelayedDrag();                                                                                     // 328
                                                                                                                      // 329
					// Make the element draggable                                                                                    // 330
					dragEl.draggable = true;                                                                                         // 331
                                                                                                                      // 332
					// Disable "draggable"                                                                                           // 333
					options.ignore.split(',').forEach(function (criteria) {                                                          // 334
						_find(dragEl, criteria.trim(), _disableDraggable);                                                              // 335
					});                                                                                                              // 336
                                                                                                                      // 337
					// Bind the events: dragstart/dragend                                                                            // 338
					_this._triggerDragStart(touch);                                                                                  // 339
				};                                                                                                                // 340
                                                                                                                      // 341
				_on(ownerDocument, 'mouseup', _this._onDrop);                                                                     // 342
				_on(ownerDocument, 'touchend', _this._onDrop);                                                                    // 343
				_on(ownerDocument, 'touchcancel', _this._onDrop);                                                                 // 344
                                                                                                                      // 345
				if (options.delay) {                                                                                              // 346
					// If the user moves the pointer before the delay has been reached:                                              // 347
					// disable the delayed drag                                                                                      // 348
					_on(ownerDocument, 'mousemove', _this._disableDelayedDrag);                                                      // 349
					_on(ownerDocument, 'touchmove', _this._disableDelayedDrag);                                                      // 350
                                                                                                                      // 351
					_this._dragStartTimer = setTimeout(dragStartFn, options.delay);                                                  // 352
				} else {                                                                                                          // 353
					dragStartFn();                                                                                                   // 354
				}                                                                                                                 // 355
			}                                                                                                                  // 356
		},                                                                                                                  // 357
                                                                                                                      // 358
		_disableDelayedDrag: function () {                                                                                  // 359
			var ownerDocument = this.el.ownerDocument;                                                                         // 360
                                                                                                                      // 361
			clearTimeout(this._dragStartTimer);                                                                                // 362
                                                                                                                      // 363
			_off(ownerDocument, 'mousemove', this._disableDelayedDrag);                                                        // 364
			_off(ownerDocument, 'touchmove', this._disableDelayedDrag);                                                        // 365
		},                                                                                                                  // 366
                                                                                                                      // 367
		_triggerDragStart: function (/** Touch */touch) {                                                                   // 368
			if (touch) {                                                                                                       // 369
				// Touch device support                                                                                           // 370
				tapEvt = {                                                                                                        // 371
					target: dragEl,                                                                                                  // 372
					clientX: touch.clientX,                                                                                          // 373
					clientY: touch.clientY                                                                                           // 374
				};                                                                                                                // 375
                                                                                                                      // 376
				this._onDragStart(tapEvt, 'touch');                                                                               // 377
			}                                                                                                                  // 378
			else if (!supportDraggable) {                                                                                      // 379
				this._onDragStart(tapEvt, true);                                                                                  // 380
			}                                                                                                                  // 381
			else {                                                                                                             // 382
				_on(dragEl, 'dragend', this);                                                                                     // 383
				_on(rootEl, 'dragstart', this._onDragStart);                                                                      // 384
			}                                                                                                                  // 385
                                                                                                                      // 386
			try {                                                                                                              // 387
				if (document.selection) {                                                                                         // 388
					document.selection.empty();                                                                                      // 389
				} else {                                                                                                          // 390
					window.getSelection().removeAllRanges();                                                                         // 391
				}                                                                                                                 // 392
			} catch (err) {                                                                                                    // 393
			}                                                                                                                  // 394
		},                                                                                                                  // 395
                                                                                                                      // 396
		_dragStarted: function () {                                                                                         // 397
			if (rootEl && dragEl) {                                                                                            // 398
				// Apply effect                                                                                                   // 399
				_toggleClass(dragEl, this.options.ghostClass, true);                                                              // 400
                                                                                                                      // 401
				Sortable.active = this;                                                                                           // 402
                                                                                                                      // 403
				// Drag start event                                                                                               // 404
				_dispatchEvent(this, rootEl, 'start', dragEl, rootEl, oldIndex);                                                  // 405
			}                                                                                                                  // 406
		},                                                                                                                  // 407
                                                                                                                      // 408
		_emulateDragOver: function () {                                                                                     // 409
			if (touchEvt) {                                                                                                    // 410
				_css(ghostEl, 'display', 'none');                                                                                 // 411
                                                                                                                      // 412
				var target = document.elementFromPoint(touchEvt.clientX, touchEvt.clientY),                                       // 413
					parent = target,                                                                                                 // 414
					groupName = ' ' + this.options.group.name + '',                                                                  // 415
					i = touchDragOverListeners.length;                                                                               // 416
                                                                                                                      // 417
				if (parent) {                                                                                                     // 418
					do {                                                                                                             // 419
						if (parent[expando] && parent[expando].options.groups.indexOf(groupName) > -1) {                                // 420
							while (i--) {                                                                                                  // 421
								touchDragOverListeners[i]({                                                                                   // 422
									clientX: touchEvt.clientX,                                                                                   // 423
									clientY: touchEvt.clientY,                                                                                   // 424
									target: target,                                                                                              // 425
									rootEl: parent                                                                                               // 426
								});                                                                                                           // 427
							}                                                                                                              // 428
                                                                                                                      // 429
							break;                                                                                                         // 430
						}                                                                                                               // 431
                                                                                                                      // 432
						target = parent; // store last element                                                                          // 433
					}                                                                                                                // 434
					/* jshint boss:true */                                                                                           // 435
					while (parent = parent.parentNode);                                                                              // 436
				}                                                                                                                 // 437
                                                                                                                      // 438
				_css(ghostEl, 'display', '');                                                                                     // 439
			}                                                                                                                  // 440
		},                                                                                                                  // 441
                                                                                                                      // 442
                                                                                                                      // 443
		_onTouchMove: function (/**TouchEvent*/evt) {                                                                       // 444
			if (tapEvt) {                                                                                                      // 445
				var touch = evt.touches ? evt.touches[0] : evt,                                                                   // 446
					dx = touch.clientX - tapEvt.clientX,                                                                             // 447
					dy = touch.clientY - tapEvt.clientY,                                                                             // 448
					translate3d = evt.touches ? 'translate3d(' + dx + 'px,' + dy + 'px,0)' : 'translate(' + dx + 'px,' + dy + 'px)'; // 449
                                                                                                                      // 450
				touchEvt = touch;                                                                                                 // 451
                                                                                                                      // 452
				_css(ghostEl, 'webkitTransform', translate3d);                                                                    // 453
				_css(ghostEl, 'mozTransform', translate3d);                                                                       // 454
				_css(ghostEl, 'msTransform', translate3d);                                                                        // 455
				_css(ghostEl, 'transform', translate3d);                                                                          // 456
                                                                                                                      // 457
				evt.preventDefault();                                                                                             // 458
			}                                                                                                                  // 459
		},                                                                                                                  // 460
                                                                                                                      // 461
                                                                                                                      // 462
		_onDragStart: function (/**Event*/evt, /**boolean*/useFallback) {                                                   // 463
			var dataTransfer = evt.dataTransfer,                                                                               // 464
				options = this.options;                                                                                           // 465
                                                                                                                      // 466
			this._offUpEvents();                                                                                               // 467
                                                                                                                      // 468
			if (activeGroup.pull == 'clone') {                                                                                 // 469
				cloneEl = dragEl.cloneNode(true);                                                                                 // 470
				_css(cloneEl, 'display', 'none');                                                                                 // 471
				rootEl.insertBefore(cloneEl, dragEl);                                                                             // 472
			}                                                                                                                  // 473
                                                                                                                      // 474
			if (useFallback) {                                                                                                 // 475
				var rect = dragEl.getBoundingClientRect(),                                                                        // 476
					css = _css(dragEl),                                                                                              // 477
					ghostRect;                                                                                                       // 478
                                                                                                                      // 479
				ghostEl = dragEl.cloneNode(true);                                                                                 // 480
                                                                                                                      // 481
				_css(ghostEl, 'top', rect.top - parseInt(css.marginTop, 10));                                                     // 482
				_css(ghostEl, 'left', rect.left - parseInt(css.marginLeft, 10));                                                  // 483
				_css(ghostEl, 'width', rect.width);                                                                               // 484
				_css(ghostEl, 'height', rect.height);                                                                             // 485
				_css(ghostEl, 'opacity', '0.8');                                                                                  // 486
				_css(ghostEl, 'position', 'fixed');                                                                               // 487
				_css(ghostEl, 'zIndex', '100000');                                                                                // 488
                                                                                                                      // 489
				rootEl.appendChild(ghostEl);                                                                                      // 490
                                                                                                                      // 491
				// Fixing dimensions.                                                                                             // 492
				ghostRect = ghostEl.getBoundingClientRect();                                                                      // 493
				_css(ghostEl, 'width', rect.width * 2 - ghostRect.width);                                                         // 494
				_css(ghostEl, 'height', rect.height * 2 - ghostRect.height);                                                      // 495
                                                                                                                      // 496
				if (useFallback === 'touch') {                                                                                    // 497
					// Bind touch events                                                                                             // 498
					_on(document, 'touchmove', this._onTouchMove);                                                                   // 499
					_on(document, 'touchend', this._onDrop);                                                                         // 500
					_on(document, 'touchcancel', this._onDrop);                                                                      // 501
				} else {                                                                                                          // 502
					// Old brwoser                                                                                                   // 503
					_on(document, 'mousemove', this._onTouchMove);                                                                   // 504
					_on(document, 'mouseup', this._onDrop);                                                                          // 505
				}                                                                                                                 // 506
                                                                                                                      // 507
				this._loopId = setInterval(this._emulateDragOver, 150);                                                           // 508
			}                                                                                                                  // 509
			else {                                                                                                             // 510
				if (dataTransfer) {                                                                                               // 511
					dataTransfer.effectAllowed = 'move';                                                                             // 512
					options.setData && options.setData.call(this, dataTransfer, dragEl);                                             // 513
				}                                                                                                                 // 514
                                                                                                                      // 515
				_on(document, 'drop', this);                                                                                      // 516
			}                                                                                                                  // 517
                                                                                                                      // 518
			setTimeout(this._dragStarted, 0);                                                                                  // 519
		},                                                                                                                  // 520
                                                                                                                      // 521
		_onDragOver: function (/**Event*/evt) {                                                                             // 522
			var el = this.el,                                                                                                  // 523
				target,                                                                                                           // 524
				dragRect,                                                                                                         // 525
				revert,                                                                                                           // 526
				options = this.options,                                                                                           // 527
				group = options.group,                                                                                            // 528
				groupPut = group.put,                                                                                             // 529
				isOwner = (activeGroup === group),                                                                                // 530
				canSort = options.sort;                                                                                           // 531
                                                                                                                      // 532
			if (evt.preventDefault !== void 0) {                                                                               // 533
				evt.preventDefault();                                                                                             // 534
				!options.dragoverBubble && evt.stopPropagation();                                                                 // 535
			}                                                                                                                  // 536
                                                                                                                      // 537
			if (activeGroup && !options.disabled &&                                                                            // 538
				(isOwner                                                                                                          // 539
					? canSort || (revert = !rootEl.contains(dragEl))                                                                 // 540
					: activeGroup.pull && groupPut && (                                                                              // 541
						(activeGroup.name === group.name) || // by Name                                                                 // 542
						(groupPut.indexOf && ~groupPut.indexOf(activeGroup.name)) // by Array                                           // 543
					)                                                                                                                // 544
				) &&                                                                                                              // 545
				(evt.rootEl === void 0 || evt.rootEl === this.el)                                                                 // 546
			) {                                                                                                                // 547
				// Smart auto-scrolling                                                                                           // 548
				_autoScroll(evt, options, this.el);                                                                               // 549
                                                                                                                      // 550
				if (_silent) {                                                                                                    // 551
					return;                                                                                                          // 552
				}                                                                                                                 // 553
                                                                                                                      // 554
				target = _closest(evt.target, options.draggable, el);                                                             // 555
				dragRect = dragEl.getBoundingClientRect();                                                                        // 556
                                                                                                                      // 557
                                                                                                                      // 558
				if (revert) {                                                                                                     // 559
					_cloneHide(true);                                                                                                // 560
                                                                                                                      // 561
					if (cloneEl || nextEl) {                                                                                         // 562
						rootEl.insertBefore(dragEl, cloneEl || nextEl);                                                                 // 563
					}                                                                                                                // 564
					else if (!canSort) {                                                                                             // 565
						rootEl.appendChild(dragEl);                                                                                     // 566
					}                                                                                                                // 567
                                                                                                                      // 568
					return;                                                                                                          // 569
				}                                                                                                                 // 570
                                                                                                                      // 571
                                                                                                                      // 572
				if ((el.children.length === 0) || (el.children[0] === ghostEl) ||                                                 // 573
					(el === evt.target) && (target = _ghostInBottom(el, evt))                                                        // 574
				) {                                                                                                               // 575
					if (target) {                                                                                                    // 576
						if (target.animated) {                                                                                          // 577
							return;                                                                                                        // 578
						}                                                                                                               // 579
						targetRect = target.getBoundingClientRect();                                                                    // 580
					}                                                                                                                // 581
                                                                                                                      // 582
					_cloneHide(isOwner);                                                                                             // 583
                                                                                                                      // 584
					el.appendChild(dragEl);                                                                                          // 585
					this._animate(dragRect, dragEl);                                                                                 // 586
					target && this._animate(targetRect, target);                                                                     // 587
				}                                                                                                                 // 588
				else if (target && !target.animated && target !== dragEl && (target.parentNode[expando] !== void 0)) {            // 589
					if (lastEl !== target) {                                                                                         // 590
						lastEl = target;                                                                                                // 591
						lastCSS = _css(target);                                                                                         // 592
					}                                                                                                                // 593
                                                                                                                      // 594
                                                                                                                      // 595
					var targetRect = target.getBoundingClientRect(),                                                                 // 596
						width = targetRect.right - targetRect.left,                                                                     // 597
						height = targetRect.bottom - targetRect.top,                                                                    // 598
						floating = /left|right|inline/.test(lastCSS.cssFloat + lastCSS.display),                                        // 599
						isWide = (target.offsetWidth > dragEl.offsetWidth),                                                             // 600
						isLong = (target.offsetHeight > dragEl.offsetHeight),                                                           // 601
						halfway = (floating ? (evt.clientX - targetRect.left) / width : (evt.clientY - targetRect.top) / height) > 0.5, // 602
						nextSibling = target.nextElementSibling,                                                                        // 603
						after                                                                                                           // 604
					;                                                                                                                // 605
                                                                                                                      // 606
					_silent = true;                                                                                                  // 607
					setTimeout(_unsilent, 30);                                                                                       // 608
                                                                                                                      // 609
					_cloneHide(isOwner);                                                                                             // 610
                                                                                                                      // 611
					if (floating) {                                                                                                  // 612
						after = (target.previousElementSibling === dragEl) && !isWide || halfway && isWide;                             // 613
					} else {                                                                                                         // 614
						after = (nextSibling !== dragEl) && !isLong || halfway && isLong;                                               // 615
					}                                                                                                                // 616
                                                                                                                      // 617
					if (after && !nextSibling) {                                                                                     // 618
						el.appendChild(dragEl);                                                                                         // 619
					} else {                                                                                                         // 620
						target.parentNode.insertBefore(dragEl, after ? nextSibling : target);                                           // 621
					}                                                                                                                // 622
                                                                                                                      // 623
					this._animate(dragRect, dragEl);                                                                                 // 624
					this._animate(targetRect, target);                                                                               // 625
				}                                                                                                                 // 626
			}                                                                                                                  // 627
		},                                                                                                                  // 628
                                                                                                                      // 629
		_animate: function (prevRect, target) {                                                                             // 630
			var ms = this.options.animation;                                                                                   // 631
                                                                                                                      // 632
			if (ms) {                                                                                                          // 633
				var currentRect = target.getBoundingClientRect();                                                                 // 634
                                                                                                                      // 635
				_css(target, 'transition', 'none');                                                                               // 636
				_css(target, 'transform', 'translate3d('                                                                          // 637
					+ (prevRect.left - currentRect.left) + 'px,'                                                                     // 638
					+ (prevRect.top - currentRect.top) + 'px,0)'                                                                     // 639
				);                                                                                                                // 640
                                                                                                                      // 641
				target.offsetWidth; // repaint                                                                                    // 642
                                                                                                                      // 643
				_css(target, 'transition', 'all ' + ms + 'ms');                                                                   // 644
				_css(target, 'transform', 'translate3d(0,0,0)');                                                                  // 645
                                                                                                                      // 646
				clearTimeout(target.animated);                                                                                    // 647
				target.animated = setTimeout(function () {                                                                        // 648
					_css(target, 'transition', '');                                                                                  // 649
					_css(target, 'transform', '');                                                                                   // 650
					target.animated = false;                                                                                         // 651
				}, ms);                                                                                                           // 652
			}                                                                                                                  // 653
		},                                                                                                                  // 654
                                                                                                                      // 655
		_offUpEvents: function () {                                                                                         // 656
			var ownerDocument = this.el.ownerDocument;                                                                         // 657
                                                                                                                      // 658
			_off(document, 'touchmove', this._onTouchMove);                                                                    // 659
			_off(ownerDocument, 'mouseup', this._onDrop);                                                                      // 660
			_off(ownerDocument, 'touchend', this._onDrop);                                                                     // 661
			_off(ownerDocument, 'touchcancel', this._onDrop);                                                                  // 662
		},                                                                                                                  // 663
                                                                                                                      // 664
		_onDrop: function (/**Event*/evt) {                                                                                 // 665
			var el = this.el,                                                                                                  // 666
				options = this.options;                                                                                           // 667
                                                                                                                      // 668
			clearInterval(this._loopId);                                                                                       // 669
			clearInterval(autoScroll.pid);                                                                                     // 670
                                                                                                                      // 671
			clearTimeout(this.dragStartTimer);                                                                                 // 672
                                                                                                                      // 673
			// Unbind events                                                                                                   // 674
			_off(document, 'drop', this);                                                                                      // 675
			_off(document, 'mousemove', this._onTouchMove);                                                                    // 676
			_off(el, 'dragstart', this._onDragStart);                                                                          // 677
                                                                                                                      // 678
			this._offUpEvents();                                                                                               // 679
                                                                                                                      // 680
			if (evt) {                                                                                                         // 681
				evt.preventDefault();                                                                                             // 682
				!options.dropBubble && evt.stopPropagation();                                                                     // 683
                                                                                                                      // 684
				ghostEl && ghostEl.parentNode.removeChild(ghostEl);                                                               // 685
                                                                                                                      // 686
				if (dragEl) {                                                                                                     // 687
					_off(dragEl, 'dragend', this);                                                                                   // 688
                                                                                                                      // 689
					_disableDraggable(dragEl);                                                                                       // 690
					_toggleClass(dragEl, this.options.ghostClass, false);                                                            // 691
                                                                                                                      // 692
					if (rootEl !== dragEl.parentNode) {                                                                              // 693
						newIndex = _index(dragEl);                                                                                      // 694
                                                                                                                      // 695
						// drag from one list and drop into another                                                                     // 696
						_dispatchEvent(null, dragEl.parentNode, 'sort', dragEl, rootEl, oldIndex, newIndex);                            // 697
						_dispatchEvent(this, rootEl, 'sort', dragEl, rootEl, oldIndex, newIndex);                                       // 698
                                                                                                                      // 699
						// Add event                                                                                                    // 700
						_dispatchEvent(null, dragEl.parentNode, 'add', dragEl, rootEl, oldIndex, newIndex);                             // 701
                                                                                                                      // 702
						// Remove event                                                                                                 // 703
						_dispatchEvent(this, rootEl, 'remove', dragEl, rootEl, oldIndex, newIndex);                                     // 704
					}                                                                                                                // 705
					else {                                                                                                           // 706
						// Remove clone                                                                                                 // 707
						cloneEl && cloneEl.parentNode.removeChild(cloneEl);                                                             // 708
                                                                                                                      // 709
						if (dragEl.nextSibling !== nextEl) {                                                                            // 710
							// Get the index of the dragged element within its parent                                                      // 711
							newIndex = _index(dragEl);                                                                                     // 712
                                                                                                                      // 713
							// drag & drop within the same list                                                                            // 714
							_dispatchEvent(this, rootEl, 'update', dragEl, rootEl, oldIndex, newIndex);                                    // 715
							_dispatchEvent(this, rootEl, 'sort', dragEl, rootEl, oldIndex, newIndex);                                      // 716
						}                                                                                                               // 717
					}                                                                                                                // 718
                                                                                                                      // 719
					// Drag end event                                                                                                // 720
					Sortable.active && _dispatchEvent(this, rootEl, 'end', dragEl, rootEl, oldIndex, newIndex);                      // 721
				}                                                                                                                 // 722
                                                                                                                      // 723
				// Nulling                                                                                                        // 724
				rootEl =                                                                                                          // 725
				dragEl =                                                                                                          // 726
				ghostEl =                                                                                                         // 727
				nextEl =                                                                                                          // 728
				cloneEl =                                                                                                         // 729
                                                                                                                      // 730
				scrollEl =                                                                                                        // 731
				scrollParentEl =                                                                                                  // 732
                                                                                                                      // 733
				tapEvt =                                                                                                          // 734
				touchEvt =                                                                                                        // 735
                                                                                                                      // 736
				lastEl =                                                                                                          // 737
				lastCSS =                                                                                                         // 738
                                                                                                                      // 739
				activeGroup =                                                                                                     // 740
				Sortable.active = null;                                                                                           // 741
                                                                                                                      // 742
				// Save sorting                                                                                                   // 743
				this.save();                                                                                                      // 744
			}                                                                                                                  // 745
		},                                                                                                                  // 746
                                                                                                                      // 747
                                                                                                                      // 748
		handleEvent: function (/**Event*/evt) {                                                                             // 749
			var type = evt.type;                                                                                               // 750
                                                                                                                      // 751
			if (type === 'dragover' || type === 'dragenter') {                                                                 // 752
				if (dragEl) {                                                                                                     // 753
					this._onDragOver(evt);                                                                                           // 754
					_globalDragOver(evt);                                                                                            // 755
				}                                                                                                                 // 756
			}                                                                                                                  // 757
			else if (type === 'drop' || type === 'dragend') {                                                                  // 758
				this._onDrop(evt);                                                                                                // 759
			}                                                                                                                  // 760
		},                                                                                                                  // 761
                                                                                                                      // 762
                                                                                                                      // 763
		/**                                                                                                                 // 764
		 * Serializes the item into an array of string.                                                                     // 765
		 * @returns {String[]}                                                                                              // 766
		 */                                                                                                                 // 767
		toArray: function () {                                                                                              // 768
			var order = [],                                                                                                    // 769
				el,                                                                                                               // 770
				children = this.el.children,                                                                                      // 771
				i = 0,                                                                                                            // 772
				n = children.length,                                                                                              // 773
				options = this.options;                                                                                           // 774
                                                                                                                      // 775
			for (; i < n; i++) {                                                                                               // 776
				el = children[i];                                                                                                 // 777
				if (_closest(el, options.draggable, this.el)) {                                                                   // 778
					order.push(el.getAttribute(options.dataIdAttr) || _generateId(el));                                              // 779
				}                                                                                                                 // 780
			}                                                                                                                  // 781
                                                                                                                      // 782
			return order;                                                                                                      // 783
		},                                                                                                                  // 784
                                                                                                                      // 785
                                                                                                                      // 786
		/**                                                                                                                 // 787
		 * Sorts the elements according to the array.                                                                       // 788
		 * @param  {String[]}  order  order of the items                                                                    // 789
		 */                                                                                                                 // 790
		sort: function (order) {                                                                                            // 791
			var items = {}, rootEl = this.el;                                                                                  // 792
                                                                                                                      // 793
			this.toArray().forEach(function (id, i) {                                                                          // 794
				var el = rootEl.children[i];                                                                                      // 795
                                                                                                                      // 796
				if (_closest(el, this.options.draggable, rootEl)) {                                                               // 797
					items[id] = el;                                                                                                  // 798
				}                                                                                                                 // 799
			}, this);                                                                                                          // 800
                                                                                                                      // 801
			order.forEach(function (id) {                                                                                      // 802
				if (items[id]) {                                                                                                  // 803
					rootEl.removeChild(items[id]);                                                                                   // 804
					rootEl.appendChild(items[id]);                                                                                   // 805
				}                                                                                                                 // 806
			});                                                                                                                // 807
		},                                                                                                                  // 808
                                                                                                                      // 809
                                                                                                                      // 810
		/**                                                                                                                 // 811
		 * Save the current sorting                                                                                         // 812
		 */                                                                                                                 // 813
		save: function () {                                                                                                 // 814
			var store = this.options.store;                                                                                    // 815
			store && store.set(this);                                                                                          // 816
		},                                                                                                                  // 817
                                                                                                                      // 818
                                                                                                                      // 819
		/**                                                                                                                 // 820
		 * For each element in the set, get the first element that matches the selector by testing the element itself and traversing up through its ancestors in the DOM tree.
		 * @param   {HTMLElement}  el                                                                                       // 822
		 * @param   {String}       [selector]  default: `options.draggable`                                                 // 823
		 * @returns {HTMLElement|null}                                                                                      // 824
		 */                                                                                                                 // 825
		closest: function (el, selector) {                                                                                  // 826
			return _closest(el, selector || this.options.draggable, this.el);                                                  // 827
		},                                                                                                                  // 828
                                                                                                                      // 829
                                                                                                                      // 830
		/**                                                                                                                 // 831
		 * Set/get option                                                                                                   // 832
		 * @param   {string} name                                                                                           // 833
		 * @param   {*}      [value]                                                                                        // 834
		 * @returns {*}                                                                                                     // 835
		 */                                                                                                                 // 836
		option: function (name, value) {                                                                                    // 837
			var options = this.options;                                                                                        // 838
                                                                                                                      // 839
			if (value === void 0) {                                                                                            // 840
				return options[name];                                                                                             // 841
			} else {                                                                                                           // 842
				options[name] = value;                                                                                            // 843
			}                                                                                                                  // 844
		},                                                                                                                  // 845
                                                                                                                      // 846
                                                                                                                      // 847
		/**                                                                                                                 // 848
		 * Destroy                                                                                                          // 849
		 */                                                                                                                 // 850
		destroy: function () {                                                                                              // 851
			var el = this.el;                                                                                                  // 852
                                                                                                                      // 853
			el[expando] = null;                                                                                                // 854
                                                                                                                      // 855
			_off(el, 'mousedown', this._onTapStart);                                                                           // 856
			_off(el, 'touchstart', this._onTapStart);                                                                          // 857
                                                                                                                      // 858
			_off(el, 'dragover', this);                                                                                        // 859
			_off(el, 'dragenter', this);                                                                                       // 860
                                                                                                                      // 861
			// Remove draggable attributes                                                                                     // 862
			Array.prototype.forEach.call(el.querySelectorAll('[draggable]'), function (el) {                                   // 863
				el.removeAttribute('draggable');                                                                                  // 864
			});                                                                                                                // 865
                                                                                                                      // 866
			touchDragOverListeners.splice(touchDragOverListeners.indexOf(this._onDragOver), 1);                                // 867
                                                                                                                      // 868
			this._onDrop();                                                                                                    // 869
                                                                                                                      // 870
			this.el = el = null;                                                                                               // 871
		}                                                                                                                   // 872
	};                                                                                                                   // 873
                                                                                                                      // 874
                                                                                                                      // 875
	function _cloneHide(state) {                                                                                         // 876
		if (cloneEl && (cloneEl.state !== state)) {                                                                         // 877
			_css(cloneEl, 'display', state ? 'none' : '');                                                                     // 878
			!state && cloneEl.state && rootEl.insertBefore(cloneEl, dragEl);                                                   // 879
			cloneEl.state = state;                                                                                             // 880
		}                                                                                                                   // 881
	}                                                                                                                    // 882
                                                                                                                      // 883
                                                                                                                      // 884
	function _bind(ctx, fn) {                                                                                            // 885
		var args = slice.call(arguments, 2);                                                                                // 886
		return	fn.bind ? fn.bind.apply(fn, [ctx].concat(args)) : function () {                                              // 887
			return fn.apply(ctx, args.concat(slice.call(arguments)));                                                          // 888
		};                                                                                                                  // 889
	}                                                                                                                    // 890
                                                                                                                      // 891
                                                                                                                      // 892
	function _closest(/**HTMLElement*/el, /**String*/selector, /**HTMLElement*/ctx) {                                    // 893
		if (el) {                                                                                                           // 894
			ctx = ctx || document;                                                                                             // 895
			selector = selector.split('.');                                                                                    // 896
                                                                                                                      // 897
			var tag = selector.shift().toUpperCase(),                                                                          // 898
				re = new RegExp('\\s(' + selector.join('|') + ')\\s', 'g');                                                       // 899
                                                                                                                      // 900
			do {                                                                                                               // 901
				if (                                                                                                              // 902
					(tag === '>*' && el.parentNode === ctx) || (                                                                     // 903
						(tag === '' || el.nodeName.toUpperCase() == tag) &&                                                             // 904
						(!selector.length || ((' ' + el.className + ' ').match(re) || []).length == selector.length)                    // 905
					)                                                                                                                // 906
				) {                                                                                                               // 907
					return el;                                                                                                       // 908
				}                                                                                                                 // 909
			}                                                                                                                  // 910
			while (el !== ctx && (el = el.parentNode));                                                                        // 911
		}                                                                                                                   // 912
                                                                                                                      // 913
		return null;                                                                                                        // 914
	}                                                                                                                    // 915
                                                                                                                      // 916
                                                                                                                      // 917
	function _globalDragOver(/**Event*/evt) {                                                                            // 918
		evt.dataTransfer.dropEffect = 'move';                                                                               // 919
		evt.preventDefault();                                                                                               // 920
	}                                                                                                                    // 921
                                                                                                                      // 922
                                                                                                                      // 923
	function _on(el, event, fn) {                                                                                        // 924
		el.addEventListener(event, fn, false);                                                                              // 925
	}                                                                                                                    // 926
                                                                                                                      // 927
                                                                                                                      // 928
	function _off(el, event, fn) {                                                                                       // 929
		el.removeEventListener(event, fn, false);                                                                           // 930
	}                                                                                                                    // 931
                                                                                                                      // 932
                                                                                                                      // 933
	function _toggleClass(el, name, state) {                                                                             // 934
		if (el) {                                                                                                           // 935
			if (el.classList) {                                                                                                // 936
				el.classList[state ? 'add' : 'remove'](name);                                                                     // 937
			}                                                                                                                  // 938
			else {                                                                                                             // 939
				var className = (' ' + el.className + ' ').replace(RSPACE, ' ').replace(' ' + name + ' ', ' ');                   // 940
				el.className = (className + (state ? ' ' + name : '')).replace(RSPACE, ' ');                                      // 941
			}                                                                                                                  // 942
		}                                                                                                                   // 943
	}                                                                                                                    // 944
                                                                                                                      // 945
                                                                                                                      // 946
	function _css(el, prop, val) {                                                                                       // 947
		var style = el && el.style;                                                                                         // 948
                                                                                                                      // 949
		if (style) {                                                                                                        // 950
			if (val === void 0) {                                                                                              // 951
				if (document.defaultView && document.defaultView.getComputedStyle) {                                              // 952
					val = document.defaultView.getComputedStyle(el, '');                                                             // 953
				}                                                                                                                 // 954
				else if (el.currentStyle) {                                                                                       // 955
					val = el.currentStyle;                                                                                           // 956
				}                                                                                                                 // 957
                                                                                                                      // 958
				return prop === void 0 ? val : val[prop];                                                                         // 959
			}                                                                                                                  // 960
			else {                                                                                                             // 961
				if (!(prop in style)) {                                                                                           // 962
					prop = '-webkit-' + prop;                                                                                        // 963
				}                                                                                                                 // 964
                                                                                                                      // 965
				style[prop] = val + (typeof val === 'string' ? '' : 'px');                                                        // 966
			}                                                                                                                  // 967
		}                                                                                                                   // 968
	}                                                                                                                    // 969
                                                                                                                      // 970
                                                                                                                      // 971
	function _find(ctx, tagName, iterator) {                                                                             // 972
		if (ctx) {                                                                                                          // 973
			var list = ctx.getElementsByTagName(tagName), i = 0, n = list.length;                                              // 974
                                                                                                                      // 975
			if (iterator) {                                                                                                    // 976
				for (; i < n; i++) {                                                                                              // 977
					iterator(list[i], i);                                                                                            // 978
				}                                                                                                                 // 979
			}                                                                                                                  // 980
                                                                                                                      // 981
			return list;                                                                                                       // 982
		}                                                                                                                   // 983
                                                                                                                      // 984
		return [];                                                                                                          // 985
	}                                                                                                                    // 986
                                                                                                                      // 987
                                                                                                                      // 988
	function _disableDraggable(el) {                                                                                     // 989
		el.draggable = false;                                                                                               // 990
	}                                                                                                                    // 991
                                                                                                                      // 992
                                                                                                                      // 993
	function _unsilent() {                                                                                               // 994
		_silent = false;                                                                                                    // 995
	}                                                                                                                    // 996
                                                                                                                      // 997
                                                                                                                      // 998
	/** @returns {HTMLElement|false} */                                                                                  // 999
	function _ghostInBottom(el, evt) {                                                                                   // 1000
		var lastEl = el.lastElementChild, rect = lastEl.getBoundingClientRect();                                            // 1001
		return (evt.clientY - (rect.top + rect.height) > 5) && lastEl; // min delta                                         // 1002
	}                                                                                                                    // 1003
                                                                                                                      // 1004
                                                                                                                      // 1005
	/**                                                                                                                  // 1006
	 * Generate id                                                                                                       // 1007
	 * @param   {HTMLElement} el                                                                                         // 1008
	 * @returns {String}                                                                                                 // 1009
	 * @private                                                                                                          // 1010
	 */                                                                                                                  // 1011
	function _generateId(el) {                                                                                           // 1012
		var str = el.tagName + el.className + el.src + el.href + el.textContent,                                            // 1013
			i = str.length,                                                                                                    // 1014
			sum = 0;                                                                                                           // 1015
                                                                                                                      // 1016
		while (i--) {                                                                                                       // 1017
			sum += str.charCodeAt(i);                                                                                          // 1018
		}                                                                                                                   // 1019
                                                                                                                      // 1020
		return sum.toString(36);                                                                                            // 1021
	}                                                                                                                    // 1022
                                                                                                                      // 1023
	/**                                                                                                                  // 1024
	 * Returns the index of an element within its parent                                                                 // 1025
	 * @param el                                                                                                         // 1026
	 * @returns {number}                                                                                                 // 1027
	 * @private                                                                                                          // 1028
	 */                                                                                                                  // 1029
	function _index(/**HTMLElement*/el) {                                                                                // 1030
		var index = 0;                                                                                                      // 1031
		while (el && (el = el.previousElementSibling)) {                                                                    // 1032
			if (el.nodeName.toUpperCase() !== 'TEMPLATE') {                                                                    // 1033
				index++;                                                                                                          // 1034
			}                                                                                                                  // 1035
		}                                                                                                                   // 1036
		return index;                                                                                                       // 1037
	}                                                                                                                    // 1038
                                                                                                                      // 1039
	function _throttle(callback, ms) {                                                                                   // 1040
		var args, _this;                                                                                                    // 1041
                                                                                                                      // 1042
		return function () {                                                                                                // 1043
			if (args === void 0) {                                                                                             // 1044
				args = arguments;                                                                                                 // 1045
				_this = this;                                                                                                     // 1046
                                                                                                                      // 1047
				setTimeout(function () {                                                                                          // 1048
					if (args.length === 1) {                                                                                         // 1049
						callback.call(_this, args[0]);                                                                                  // 1050
					} else {                                                                                                         // 1051
						callback.apply(_this, args);                                                                                    // 1052
					}                                                                                                                // 1053
                                                                                                                      // 1054
					args = void 0;                                                                                                   // 1055
				}, ms);                                                                                                           // 1056
			}                                                                                                                  // 1057
		};                                                                                                                  // 1058
	}                                                                                                                    // 1059
                                                                                                                      // 1060
	function _extend(dst, src) {                                                                                         // 1061
		if (dst && src) {                                                                                                   // 1062
			for (var key in src) {                                                                                             // 1063
				if (src.hasOwnProperty(key)) {                                                                                    // 1064
					dst[key] = src[key];                                                                                             // 1065
				}                                                                                                                 // 1066
			}                                                                                                                  // 1067
		}                                                                                                                   // 1068
                                                                                                                      // 1069
		return dst;                                                                                                         // 1070
	}                                                                                                                    // 1071
                                                                                                                      // 1072
                                                                                                                      // 1073
	// Export utils                                                                                                      // 1074
	Sortable.utils = {                                                                                                   // 1075
		on: _on,                                                                                                            // 1076
		off: _off,                                                                                                          // 1077
		css: _css,                                                                                                          // 1078
		find: _find,                                                                                                        // 1079
		bind: _bind,                                                                                                        // 1080
		is: function (el, selector) {                                                                                       // 1081
			return !!_closest(el, selector, el);                                                                               // 1082
		},                                                                                                                  // 1083
		extend: _extend,                                                                                                    // 1084
		throttle: _throttle,                                                                                                // 1085
		closest: _closest,                                                                                                  // 1086
		toggleClass: _toggleClass,                                                                                          // 1087
		index: _index                                                                                                       // 1088
	};                                                                                                                   // 1089
                                                                                                                      // 1090
                                                                                                                      // 1091
	Sortable.version = '1.2.0';                                                                                          // 1092
                                                                                                                      // 1093
                                                                                                                      // 1094
	/**                                                                                                                  // 1095
	 * Create sortable instance                                                                                          // 1096
	 * @param {HTMLElement}  el                                                                                          // 1097
	 * @param {Object}      [options]                                                                                    // 1098
	 */                                                                                                                  // 1099
	Sortable.create = function (el, options) {                                                                           // 1100
		return new Sortable(el, options);                                                                                   // 1101
	};                                                                                                                   // 1102
                                                                                                                      // 1103
	// Export                                                                                                            // 1104
	return Sortable;                                                                                                     // 1105
});                                                                                                                   // 1106
                                                                                                                      // 1107
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}).call(this);






(function () {

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                    //
// packages/rubaxa:sortable/meteor/template.template.js                                                               //
//                                                                                                                    //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                                                                                                      //
                                                                                                                      // 1
Template.__checkName("sortable");                                                                                     // 2
Template["sortable"] = new Template("Template.sortable", (function() {                                                // 3
  var view = this;                                                                                                    // 4
  return Blaze.Each(function() {                                                                                      // 5
    return Spacebars.call(view.lookup("items"));                                                                      // 6
  }, function() {                                                                                                     // 7
    return [ "\n		", Blaze._InOuterTemplateScope(view, function() {                                                   // 8
      return Blaze._TemplateWith(function() {                                                                         // 9
        return Spacebars.call(view.lookup("."));                                                                      // 10
      }, function() {                                                                                                 // 11
        return Spacebars.include(function() {                                                                         // 12
          return Spacebars.call(view.templateContentBlock);                                                           // 13
        });                                                                                                           // 14
      });                                                                                                             // 15
    }), "\n	" ];                                                                                                      // 16
  });                                                                                                                 // 17
}));                                                                                                                  // 18
                                                                                                                      // 19
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}).call(this);






(function () {

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                    //
// packages/rubaxa:sortable/meteor/reactivize.js                                                                      //
//                                                                                                                    //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                                                                                                      //
/*                                                                                                                    // 1
Make a Sortable reactive by binding it to a Mongo.Collection.                                                         // 2
Calls `rubaxa:sortable/collection-update` on the server to update the sortField of affected records.                  // 3
                                                                                                                      // 4
TODO:                                                                                                                 // 5
  * supply consecutive values if the `order` field doesn't have any                                                   // 6
  * .get(DOMElement) - return the Sortable object of a DOMElement                                                     // 7
  * create a new _id automatically onAdd if the event.from list had pull: 'clone'                                     // 8
  * support arrays                                                                                                    // 9
    * sparse arrays                                                                                                   // 10
  * tests                                                                                                             // 11
    * drop onto existing empty lists                                                                                  // 12
    * insert back into lists emptied by dropping                                                                      // 13
    * performance on dragging into long list at the beginning                                                         // 14
  * handle failures on Collection operations, e.g. add callback to .insert                                            // 15
  * when adding elements, update ranks just for the half closer to the start/end of the list                          // 16
  * revisit http://programmers.stackexchange.com/questions/266451/maintain-ordered-collection-by-updating-as-few-order-fields-as-possible
  * reproduce the insidious bug where the list isn't always sorted (fiddle with dragging #1 over #2, then back, then #N before #1)
                                                                                                                      // 19
 */                                                                                                                   // 20
                                                                                                                      // 21
'use strict';                                                                                                         // 22
                                                                                                                      // 23
Template.sortable.created = function () {                                                                             // 24
	var templateInstance = this;                                                                                         // 25
	// `this` is a template instance that can store properties of our choice - http://docs.meteor.com/#/full/template_inst
	if (templateInstance.setupDone) return;  // paranoid: only run setup once                                            // 27
	// this.data is the data context - http://docs.meteor.com/#/full/template_data                                       // 28
	// normalize all options into templateInstance.options, and remove them from .data                                   // 29
	templateInstance.options = templateInstance.data.options || {};                                                      // 30
	Object.keys(templateInstance.data).forEach(function (key) {                                                          // 31
		if (key === 'options' || key === 'items') return;                                                                   // 32
		templateInstance.options[key] = templateInstance.data[key];                                                         // 33
		delete templateInstance.data[key];                                                                                  // 34
	});                                                                                                                  // 35
	templateInstance.options.sortField = templateInstance.options.sortField || 'order';                                  // 36
	// We can get the collection via the .collection property of the cursor, but changes made that way                   // 37
	// will NOT be sent to the server - https://github.com/meteor/meteor/issues/3271#issuecomment-66656257               // 38
	// Thus we need to use dburles:mongo-collection-instances to get a *real* collection                                 // 39
	if (templateInstance.data.items && templateInstance.data.items.collection) {                                         // 40
		// cursor passed via items=; its .collection works client-only and has a .name property                             // 41
		templateInstance.collectionName = templateInstance.data.items.collection.name;                                      // 42
		templateInstance.collection = Mongo.Collection.get(templateInstance.collectionName);                                // 43
	}	else if (templateInstance.data.items) {                                                                            // 44
		// collection passed via items=; does NOT have a .name property, but _name                                          // 45
		templateInstance.collection = templateInstance.data.items;                                                          // 46
		templateInstance.collectionName = templateInstance.collection._name;                                                // 47
	}	else if (templateInstance.data.collection) {                                                                       // 48
	  // cursor passed directly                                                                                          // 49
		templateInstance.collectionName = templateInstance.data.collection.name;                                            // 50
		templateInstance.collection = Mongo.Collection.get(templateInstance.collectionName);                                // 51
	} else {                                                                                                             // 52
		templateInstance.collection = templateInstance.data;  // collection passed directly                                 // 53
		templateInstance.collectionName = templateInstance.collection._name;                                                // 54
	}                                                                                                                    // 55
                                                                                                                      // 56
	// TODO if (Array.isArray(templateInstance.collection))                                                              // 57
                                                                                                                      // 58
	// What if user filters some of the items in the cursor, instead of ordering the entire collection?                  // 59
	// Use case: reorder by preference movies of a given genre, a filter within all movies.                              // 60
	// A: Modify all intervening items **that are on the client**, to preserve the overall order                         // 61
	// TODO: update *all* orders via a server method that takes not ids, but start & end elements - mild security risk   // 62
	delete templateInstance.data.options;                                                                                // 63
                                                                                                                      // 64
	/**                                                                                                                  // 65
	 * When an element was moved, adjust its orders and possibly the order of                                            // 66
	 * other elements, so as to maintain a consistent and correct order.                                                 // 67
	 *                                                                                                                   // 68
	 * There are three approaches to this:                                                                               // 69
	 * 1) Using arbitrary precision arithmetic and setting only the order of the moved                                   // 70
	 *    element to the average of the orders of the elements around it -                                               // 71
	 *    http://programmers.stackexchange.com/questions/266451/maintain-ordered-collection-by-updating-as-few-order-fields-as-possible
	 *    The downside is that the order field in the DB will increase by one byte every                                 // 73
	 *    time an element is reordered.                                                                                  // 74
	 * 2) Adjust the orders of the intervening items. This keeps the orders sane (integers)                              // 75
	 *    but is slower because we have to modify multiple documents.                                                    // 76
	 *    TODO: we may be able to update fewer records by only altering the                                              // 77
	 *    order of the records between the newIndex/oldIndex and the start/end of the list.                              // 78
	 * 3) Use regular precision arithmetic, but when the difference between the orders of the                            // 79
	 *    moved item and the one before/after it falls below a certain threshold, adjust                                 // 80
	 *    the order of that other item, and cascade doing so up or down the list.                                        // 81
	 *    This will keep the `order` field constant in size, and will only occasionally                                  // 82
	 *    require updating the `order` of other records.                                                                 // 83
	 *                                                                                                                   // 84
	 * For now, we use approach #2.                                                                                      // 85
	 *                                                                                                                   // 86
	 * @param {String} itemId - the _id of the item that was moved                                                       // 87
	 * @param {Number} orderPrevItem - the order of the item before it, or null                                          // 88
	 * @param {Number} orderNextItem - the order of the item after it, or null                                           // 89
	 */                                                                                                                  // 90
	templateInstance.adjustOrders = function adjustOrders(itemId, orderPrevItem, orderNextItem) {                        // 91
		var orderField = templateInstance.options.sortField;                                                                // 92
		var selector = {}, modifier = {$set: {}};                                                                           // 93
		var ids = [];                                                                                                       // 94
		var startOrder = templateInstance.collection.findOne(itemId)[orderField];                                           // 95
		if (orderPrevItem !== null) {                                                                                       // 96
			// Element has a previous sibling, therefore it was moved down in the list.                                        // 97
			// Decrease the order of intervening elements.                                                                     // 98
			selector[orderField] = {$lte: orderPrevItem, $gt: startOrder};                                                     // 99
			ids = _.pluck(templateInstance.collection.find(selector, {fields: {_id: 1}}).fetch(), '_id');                      // 100
			Meteor.call('rubaxa:sortable/collection-update', templateInstance.collectionName, ids, orderField, -1);            // 101
                                                                                                                      // 102
			// Set the order of the dropped element to the order of its predecessor, whose order was decreased                 // 103
			modifier.$set[orderField] = orderPrevItem;                                                                         // 104
		} else {                                                                                                            // 105
			// element moved up the list, increase order of intervening elements                                               // 106
			selector[orderField] = {$gte: orderNextItem, $lt: startOrder};                                                     // 107
			ids = _.pluck(templateInstance.collection.find(selector, {fields: {_id: 1}}).fetch(), '_id');                      // 108
			Meteor.call('rubaxa:sortable/collection-update', templateInstance.collectionName, ids, orderField, 1);             // 109
                                                                                                                      // 110
			// Set the order of the dropped element to the order of its successor, whose order was increased                   // 111
			modifier.$set[orderField] = orderNextItem;                                                                         // 112
		}                                                                                                                   // 113
		templateInstance.collection.update(itemId, modifier);                                                               // 114
	};                                                                                                                   // 115
                                                                                                                      // 116
	templateInstance.setupDone = true;                                                                                   // 117
};                                                                                                                    // 118
                                                                                                                      // 119
                                                                                                                      // 120
Template.sortable.rendered = function () {                                                                            // 121
  var templateInstance = this;                                                                                        // 122
	var orderField = templateInstance.options.sortField;                                                                 // 123
                                                                                                                      // 124
	// sorting was changed within the list                                                                               // 125
	var optionsOnUpdate = templateInstance.options.onUpdate;                                                             // 126
	templateInstance.options.onUpdate = function sortableUpdate(/**Event*/event) {                                       // 127
		var itemEl = event.item;  // dragged HTMLElement                                                                    // 128
		event.data = Blaze.getData(itemEl);                                                                                 // 129
		if (event.newIndex < event.oldIndex) {                                                                              // 130
			// Element moved up in the list. The dropped element has a next sibling for sure.                                  // 131
			var orderNextItem = Blaze.getData(itemEl.nextElementSibling)[orderField];                                          // 132
			templateInstance.adjustOrders(event.data._id, null, orderNextItem);                                                // 133
		} else if (event.newIndex > event.oldIndex) {                                                                       // 134
			// Element moved down in the list. The dropped element has a previous sibling for sure.                            // 135
			var orderPrevItem = Blaze.getData(itemEl.previousElementSibling)[orderField];                                      // 136
			templateInstance.adjustOrders(event.data._id, orderPrevItem, null);                                                // 137
		} else {                                                                                                            // 138
			// do nothing - drag and drop in the same location                                                                 // 139
		}                                                                                                                   // 140
		if (optionsOnUpdate) optionsOnUpdate(event);                                                                        // 141
	};                                                                                                                   // 142
                                                                                                                      // 143
	// element was added from another list                                                                               // 144
	var optionsOnAdd = templateInstance.options.onAdd;                                                                   // 145
	templateInstance.options.onAdd = function sortableAdd(/**Event*/event) {                                             // 146
		var itemEl = event.item;  // dragged HTMLElement                                                                    // 147
		event.data = Blaze.getData(itemEl);                                                                                 // 148
		// let the user decorate the object with additional properties before insertion                                     // 149
		if (optionsOnAdd) optionsOnAdd(event);                                                                              // 150
                                                                                                                      // 151
		// Insert the new element at the end of the list and move it where it was dropped.                                  // 152
		// We could insert it at the beginning, but that would lead to negative orders.                                     // 153
		var sortSpecifier = {}; sortSpecifier[orderField] = -1;                                                             // 154
		event.data.order = templateInstance.collection.findOne({}, { sort: sortSpecifier, limit: 1 }).order + 1;            // 155
		// TODO: this can obviously be optimized by setting the order directly as the arithmetic average, with the caveats described above
		var newElementId = templateInstance.collection.insert(event.data);                                                  // 157
		event.data._id = newElementId;                                                                                      // 158
		if (itemEl.nextElementSibling) {                                                                                    // 159
			var orderNextItem = Blaze.getData(itemEl.nextElementSibling)[orderField];                                          // 160
			templateInstance.adjustOrders(newElementId, null, orderNextItem);                                                  // 161
		} else {                                                                                                            // 162
			// do nothing - inserted after the last element                                                                    // 163
		}                                                                                                                   // 164
		// remove the dropped HTMLElement from the list because we have inserted it in the collection, which will update the template
		itemEl.parentElement.removeChild(itemEl);                                                                           // 166
	};                                                                                                                   // 167
                                                                                                                      // 168
	// element was removed by dragging into another list                                                                 // 169
	var optionsOnRemove = templateInstance.options.onRemove;                                                             // 170
	templateInstance.options.onRemove = function sortableRemove(/**Event*/event) {                                       // 171
		var itemEl = event.item;  // dragged HTMLElement                                                                    // 172
		event.data = Blaze.getData(itemEl);                                                                                 // 173
		// don't remove from the collection if group.pull is clone or false                                                 // 174
		if (typeof templateInstance.options.group === 'undefined'                                                           // 175
				|| typeof templateInstance.options.group.pull === 'undefined'                                                     // 176
				|| templateInstance.options.group.pull === true                                                                   // 177
		) templateInstance.collection.remove(event.data._id);                                                               // 178
		if (optionsOnRemove) optionsOnRemove(event);                                                                        // 179
	};                                                                                                                   // 180
                                                                                                                      // 181
	// just compute the `data` context                                                                                   // 182
	['onStart', 'onEnd', 'onSort', 'onFilter'].forEach(function (eventHandler) {                                         // 183
		if (templateInstance.options[eventHandler]) {                                                                       // 184
			var userEventHandler = templateInstance.options[eventHandler];                                                     // 185
			templateInstance.options[eventHandler] = function (/**Event*/event) {                                              // 186
				var itemEl = event.item;  // dragged HTMLElement                                                                  // 187
				event.data = Blaze.getData(itemEl);                                                                               // 188
				userEventHandler(event);                                                                                          // 189
			};                                                                                                                 // 190
		}                                                                                                                   // 191
	});                                                                                                                  // 192
                                                                                                                      // 193
	templateInstance.sortable = Sortable.create(templateInstance.firstNode.parentElement, templateInstance.options);     // 194
	// TODO make the object accessible, e.g. via Sortable.getSortableById() or some such                                 // 195
};                                                                                                                    // 196
                                                                                                                      // 197
                                                                                                                      // 198
Template.sortable.destroyed = function () {                                                                           // 199
	this.sortable.destroy();                                                                                             // 200
};                                                                                                                    // 201
                                                                                                                      // 202
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}).call(this);






(function () {

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                    //
// packages/rubaxa:sortable/meteor/methods-client.js                                                                  //
//                                                                                                                    //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                                                                                                      //
'use strict';                                                                                                         // 1
                                                                                                                      // 2
Meteor.methods({                                                                                                      // 3
	/**                                                                                                                  // 4
	 * Update the sortField of documents with given ids in a collection, incrementing it by incDec                       // 5
	 * @param {String} collectionName - name of the collection to update                                                 // 6
	 * @param {String[]} ids - array of document ids                                                                     // 7
	 * @param {String} orderField - the name of the order field, usually "order"                                         // 8
	 * @param {Number} incDec - pass 1 or -1                                                                             // 9
	 */                                                                                                                  // 10
	'rubaxa:sortable/collection-update': function (collectionName, ids, sortField, incDec) {                             // 11
		var selector = {_id: {$in: ids}}, modifier = {$inc: {}};                                                            // 12
		modifier.$inc[sortField] = incDec;                                                                                  // 13
		Mongo.Collection.get(collectionName).update(selector, modifier, {multi: true});                                     // 14
	}                                                                                                                    // 15
});                                                                                                                   // 16
                                                                                                                      // 17
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}).call(this);


/* Exports */
if (typeof Package === 'undefined') Package = {};
Package['rubaxa:sortable'] = {
  Sortable: Sortable
};

})();
