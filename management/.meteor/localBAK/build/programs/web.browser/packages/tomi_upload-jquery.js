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
var ReactiveVar = Package['reactive-var'].ReactiveVar;
var Template = Package.templating.Template;
var Blaze = Package.blaze.Blaze;
var UI = Package.blaze.UI;
var Handlebars = Package.blaze.Handlebars;
var HTML = Package.htmljs.HTML;

/* Package-scope variables */
var Uploader, bytesToSize;

(function () {

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                  //
// packages/tomi:upload-jquery/lib/vendor/jquery.ui.widget.js                                                       //
//                                                                                                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                                                                                                    //
/*! jQuery UI - v1.11.1 - 2014-09-17                                                                                // 1
* http://jqueryui.com                                                                                               // 2
* Includes: widget.js                                                                                               // 3
* Copyright 2014 jQuery Foundation and other contributors; Licensed MIT */                                          // 4
                                                                                                                    // 5
(function( factory ) {                                                                                              // 6
	if ( typeof define === "function" && define.amd ) {                                                                // 7
                                                                                                                    // 8
		// AMD. Register as an anonymous module.                                                                          // 9
		define([ "jquery" ], factory );                                                                                   // 10
	} else {                                                                                                           // 11
                                                                                                                    // 12
		// Browser globals                                                                                                // 13
		factory( jQuery );                                                                                                // 14
	}                                                                                                                  // 15
}(function( $ ) {                                                                                                   // 16
/*!                                                                                                                 // 17
 * jQuery UI Widget 1.11.1                                                                                          // 18
 * http://jqueryui.com                                                                                              // 19
 *                                                                                                                  // 20
 * Copyright 2014 jQuery Foundation and other contributors                                                          // 21
 * Released under the MIT license.                                                                                  // 22
 * http://jquery.org/license                                                                                        // 23
 *                                                                                                                  // 24
 * http://api.jqueryui.com/jQuery.widget/                                                                           // 25
 */                                                                                                                 // 26
                                                                                                                    // 27
                                                                                                                    // 28
var widget_uuid = 0,                                                                                                // 29
	widget_slice = Array.prototype.slice;                                                                              // 30
                                                                                                                    // 31
$.cleanData = (function( orig ) {                                                                                   // 32
	return function( elems ) {                                                                                         // 33
		var events, elem, i;                                                                                              // 34
		for ( i = 0; (elem = elems[i]) != null; i++ ) {                                                                   // 35
			try {                                                                                                            // 36
                                                                                                                    // 37
				// Only trigger remove when necessary to save time                                                              // 38
				events = $._data( elem, "events" );                                                                             // 39
				if ( events && events.remove ) {                                                                                // 40
					$( elem ).triggerHandler( "remove" );                                                                          // 41
				}                                                                                                               // 42
                                                                                                                    // 43
			// http://bugs.jquery.com/ticket/8235                                                                            // 44
			} catch( e ) {}                                                                                                  // 45
		}                                                                                                                 // 46
		orig( elems );                                                                                                    // 47
	};                                                                                                                 // 48
})( $.cleanData );                                                                                                  // 49
                                                                                                                    // 50
$.widget = function( name, base, prototype ) {                                                                      // 51
	var fullName, existingConstructor, constructor, basePrototype,                                                     // 52
		// proxiedPrototype allows the provided prototype to remain unmodified                                            // 53
		// so that it can be used as a mixin for multiple widgets (#8876)                                                 // 54
		proxiedPrototype = {},                                                                                            // 55
		namespace = name.split( "." )[ 0 ];                                                                               // 56
                                                                                                                    // 57
	name = name.split( "." )[ 1 ];                                                                                     // 58
	fullName = namespace + "-" + name;                                                                                 // 59
                                                                                                                    // 60
	if ( !prototype ) {                                                                                                // 61
		prototype = base;                                                                                                 // 62
		base = $.Widget;                                                                                                  // 63
	}                                                                                                                  // 64
                                                                                                                    // 65
	// create selector for plugin                                                                                      // 66
	$.expr[ ":" ][ fullName.toLowerCase() ] = function( elem ) {                                                       // 67
		return !!$.data( elem, fullName );                                                                                // 68
	};                                                                                                                 // 69
                                                                                                                    // 70
	$[ namespace ] = $[ namespace ] || {};                                                                             // 71
	existingConstructor = $[ namespace ][ name ];                                                                      // 72
	constructor = $[ namespace ][ name ] = function( options, element ) {                                              // 73
		// allow instantiation without "new" keyword                                                                      // 74
		if ( !this._createWidget ) {                                                                                      // 75
			return new constructor( options, element );                                                                      // 76
		}                                                                                                                 // 77
                                                                                                                    // 78
		// allow instantiation without initializing for simple inheritance                                                // 79
		// must use "new" keyword (the code above always passes args)                                                     // 80
		if ( arguments.length ) {                                                                                         // 81
			this._createWidget( options, element );                                                                          // 82
		}                                                                                                                 // 83
	};                                                                                                                 // 84
	// extend with the existing constructor to carry over any static properties                                        // 85
	$.extend( constructor, existingConstructor, {                                                                      // 86
		version: prototype.version,                                                                                       // 87
		// copy the object used to create the prototype in case we need to                                                // 88
		// redefine the widget later                                                                                      // 89
		_proto: $.extend( {}, prototype ),                                                                                // 90
		// track widgets that inherit from this widget in case this widget is                                             // 91
		// redefined after a widget inherits from it                                                                      // 92
		_childConstructors: []                                                                                            // 93
	});                                                                                                                // 94
                                                                                                                    // 95
	basePrototype = new base();                                                                                        // 96
	// we need to make the options hash a property directly on the new instance                                        // 97
	// otherwise we'll modify the options hash on the prototype that we're                                             // 98
	// inheriting from                                                                                                 // 99
	basePrototype.options = $.widget.extend( {}, basePrototype.options );                                              // 100
	$.each( prototype, function( prop, value ) {                                                                       // 101
		if ( !$.isFunction( value ) ) {                                                                                   // 102
			proxiedPrototype[ prop ] = value;                                                                                // 103
			return;                                                                                                          // 104
		}                                                                                                                 // 105
		proxiedPrototype[ prop ] = (function() {                                                                          // 106
			var _super = function() {                                                                                        // 107
					return base.prototype[ prop ].apply( this, arguments );                                                        // 108
				},                                                                                                              // 109
				_superApply = function( args ) {                                                                                // 110
					return base.prototype[ prop ].apply( this, args );                                                             // 111
				};                                                                                                              // 112
			return function() {                                                                                              // 113
				var __super = this._super,                                                                                      // 114
					__superApply = this._superApply,                                                                               // 115
					returnValue;                                                                                                   // 116
                                                                                                                    // 117
				this._super = _super;                                                                                           // 118
				this._superApply = _superApply;                                                                                 // 119
                                                                                                                    // 120
				returnValue = value.apply( this, arguments );                                                                   // 121
                                                                                                                    // 122
				this._super = __super;                                                                                          // 123
				this._superApply = __superApply;                                                                                // 124
                                                                                                                    // 125
				return returnValue;                                                                                             // 126
			};                                                                                                               // 127
		})();                                                                                                             // 128
	});                                                                                                                // 129
	constructor.prototype = $.widget.extend( basePrototype, {                                                          // 130
		// TODO: remove support for widgetEventPrefix                                                                     // 131
		// always use the name + a colon as the prefix, e.g., draggable:start                                             // 132
		// don't prefix for widgets that aren't DOM-based                                                                 // 133
		widgetEventPrefix: existingConstructor ? (basePrototype.widgetEventPrefix || name) : name                         // 134
	}, proxiedPrototype, {                                                                                             // 135
		constructor: constructor,                                                                                         // 136
		namespace: namespace,                                                                                             // 137
		widgetName: name,                                                                                                 // 138
		widgetFullName: fullName                                                                                          // 139
	});                                                                                                                // 140
                                                                                                                    // 141
	// If this widget is being redefined then we need to find all widgets that                                         // 142
	// are inheriting from it and redefine all of them so that they inherit from                                       // 143
	// the new version of this widget. We're essentially trying to replace one                                         // 144
	// level in the prototype chain.                                                                                   // 145
	if ( existingConstructor ) {                                                                                       // 146
		$.each( existingConstructor._childConstructors, function( i, child ) {                                            // 147
			var childPrototype = child.prototype;                                                                            // 148
                                                                                                                    // 149
			// redefine the child widget using the same prototype that was                                                   // 150
			// originally used, but inherit from the new version of the base                                                 // 151
			$.widget( childPrototype.namespace + "." + childPrototype.widgetName, constructor, child._proto );               // 152
		});                                                                                                               // 153
		// remove the list of existing child constructors from the old constructor                                        // 154
		// so the old child constructors can be garbage collected                                                         // 155
		delete existingConstructor._childConstructors;                                                                    // 156
	} else {                                                                                                           // 157
		base._childConstructors.push( constructor );                                                                      // 158
	}                                                                                                                  // 159
                                                                                                                    // 160
	$.widget.bridge( name, constructor );                                                                              // 161
                                                                                                                    // 162
	return constructor;                                                                                                // 163
};                                                                                                                  // 164
                                                                                                                    // 165
$.widget.extend = function( target ) {                                                                              // 166
	var input = widget_slice.call( arguments, 1 ),                                                                     // 167
		inputIndex = 0,                                                                                                   // 168
		inputLength = input.length,                                                                                       // 169
		key,                                                                                                              // 170
		value;                                                                                                            // 171
	for ( ; inputIndex < inputLength; inputIndex++ ) {                                                                 // 172
		for ( key in input[ inputIndex ] ) {                                                                              // 173
			value = input[ inputIndex ][ key ];                                                                              // 174
			if ( input[ inputIndex ].hasOwnProperty( key ) && value !== undefined ) {                                        // 175
				// Clone objects                                                                                                // 176
				if ( $.isPlainObject( value ) ) {                                                                               // 177
					target[ key ] = $.isPlainObject( target[ key ] ) ?                                                             // 178
						$.widget.extend( {}, target[ key ], value ) :                                                                 // 179
						// Don't extend strings, arrays, etc. with objects                                                            // 180
						$.widget.extend( {}, value );                                                                                 // 181
				// Copy everything else by reference                                                                            // 182
				} else {                                                                                                        // 183
					target[ key ] = value;                                                                                         // 184
				}                                                                                                               // 185
			}                                                                                                                // 186
		}                                                                                                                 // 187
	}                                                                                                                  // 188
	return target;                                                                                                     // 189
};                                                                                                                  // 190
                                                                                                                    // 191
$.widget.bridge = function( name, object ) {                                                                        // 192
	var fullName = object.prototype.widgetFullName || name;                                                            // 193
	$.fn[ name ] = function( options ) {                                                                               // 194
		var isMethodCall = typeof options === "string",                                                                   // 195
			args = widget_slice.call( arguments, 1 ),                                                                        // 196
			returnValue = this;                                                                                              // 197
                                                                                                                    // 198
		// allow multiple hashes to be passed on init                                                                     // 199
		options = !isMethodCall && args.length ?                                                                          // 200
			$.widget.extend.apply( null, [ options ].concat(args) ) :                                                        // 201
			options;                                                                                                         // 202
                                                                                                                    // 203
		if ( isMethodCall ) {                                                                                             // 204
			this.each(function() {                                                                                           // 205
				var methodValue,                                                                                                // 206
					instance = $.data( this, fullName );                                                                           // 207
				if ( options === "instance" ) {                                                                                 // 208
					returnValue = instance;                                                                                        // 209
					return false;                                                                                                  // 210
				}                                                                                                               // 211
				if ( !instance ) {                                                                                              // 212
					return $.error( "cannot call methods on " + name + " prior to initialization; " +                              // 213
						"attempted to call method '" + options + "'" );                                                               // 214
				}                                                                                                               // 215
				if ( !$.isFunction( instance[options] ) || options.charAt( 0 ) === "_" ) {                                      // 216
					return $.error( "no such method '" + options + "' for " + name + " widget instance" );                         // 217
				}                                                                                                               // 218
				methodValue = instance[ options ].apply( instance, args );                                                      // 219
				if ( methodValue !== instance && methodValue !== undefined ) {                                                  // 220
					returnValue = methodValue && methodValue.jquery ?                                                              // 221
						returnValue.pushStack( methodValue.get() ) :                                                                  // 222
						methodValue;                                                                                                  // 223
					return false;                                                                                                  // 224
				}                                                                                                               // 225
			});                                                                                                              // 226
		} else {                                                                                                          // 227
			this.each(function() {                                                                                           // 228
				var instance = $.data( this, fullName );                                                                        // 229
				if ( instance ) {                                                                                               // 230
					instance.option( options || {} );                                                                              // 231
					if ( instance._init ) {                                                                                        // 232
						instance._init();                                                                                             // 233
					}                                                                                                              // 234
				} else {                                                                                                        // 235
					$.data( this, fullName, new object( options, this ) );                                                         // 236
				}                                                                                                               // 237
			});                                                                                                              // 238
		}                                                                                                                 // 239
                                                                                                                    // 240
		return returnValue;                                                                                               // 241
	};                                                                                                                 // 242
};                                                                                                                  // 243
                                                                                                                    // 244
$.Widget = function( /* options, element */ ) {};                                                                   // 245
$.Widget._childConstructors = [];                                                                                   // 246
                                                                                                                    // 247
$.Widget.prototype = {                                                                                              // 248
	widgetName: "widget",                                                                                              // 249
	widgetEventPrefix: "",                                                                                             // 250
	defaultElement: "<div>",                                                                                           // 251
	options: {                                                                                                         // 252
		disabled: false,                                                                                                  // 253
                                                                                                                    // 254
		// callbacks                                                                                                      // 255
		create: null                                                                                                      // 256
	},                                                                                                                 // 257
	_createWidget: function( options, element ) {                                                                      // 258
		element = $( element || this.defaultElement || this )[ 0 ];                                                       // 259
		this.element = $( element );                                                                                      // 260
		this.uuid = widget_uuid++;                                                                                        // 261
		this.eventNamespace = "." + this.widgetName + this.uuid;                                                          // 262
		this.options = $.widget.extend( {},                                                                               // 263
			this.options,                                                                                                    // 264
			this._getCreateOptions(),                                                                                        // 265
			options );                                                                                                       // 266
                                                                                                                    // 267
		this.bindings = $();                                                                                              // 268
		this.hoverable = $();                                                                                             // 269
		this.focusable = $();                                                                                             // 270
                                                                                                                    // 271
		if ( element !== this ) {                                                                                         // 272
			$.data( element, this.widgetFullName, this );                                                                    // 273
			this._on( true, this.element, {                                                                                  // 274
				remove: function( event ) {                                                                                     // 275
					if ( event.target === element ) {                                                                              // 276
						this.destroy();                                                                                               // 277
					}                                                                                                              // 278
				}                                                                                                               // 279
			});                                                                                                              // 280
			this.document = $( element.style ?                                                                               // 281
				// element within the document                                                                                  // 282
				element.ownerDocument :                                                                                         // 283
				// element is window or document                                                                                // 284
				element.document || element );                                                                                  // 285
			this.window = $( this.document[0].defaultView || this.document[0].parentWindow );                                // 286
		}                                                                                                                 // 287
                                                                                                                    // 288
		this._create();                                                                                                   // 289
		this._trigger( "create", null, this._getCreateEventData() );                                                      // 290
		this._init();                                                                                                     // 291
	},                                                                                                                 // 292
	_getCreateOptions: $.noop,                                                                                         // 293
	_getCreateEventData: $.noop,                                                                                       // 294
	_create: $.noop,                                                                                                   // 295
	_init: $.noop,                                                                                                     // 296
                                                                                                                    // 297
	destroy: function() {                                                                                              // 298
		this._destroy();                                                                                                  // 299
		// we can probably remove the unbind calls in 2.0                                                                 // 300
		// all event bindings should go through this._on()                                                                // 301
		this.element                                                                                                      // 302
			.unbind( this.eventNamespace )                                                                                   // 303
			.removeData( this.widgetFullName )                                                                               // 304
			// support: jquery <1.6.3                                                                                        // 305
			// http://bugs.jquery.com/ticket/9413                                                                            // 306
			.removeData( $.camelCase( this.widgetFullName ) );                                                               // 307
		this.widget()                                                                                                     // 308
			.unbind( this.eventNamespace )                                                                                   // 309
			.removeAttr( "aria-disabled" )                                                                                   // 310
			.removeClass(                                                                                                    // 311
				this.widgetFullName + "-disabled " +                                                                            // 312
				"ui-state-disabled" );                                                                                          // 313
                                                                                                                    // 314
		// clean up events and states                                                                                     // 315
		this.bindings.unbind( this.eventNamespace );                                                                      // 316
		this.hoverable.removeClass( "ui-state-hover" );                                                                   // 317
		this.focusable.removeClass( "ui-state-focus" );                                                                   // 318
	},                                                                                                                 // 319
	_destroy: $.noop,                                                                                                  // 320
                                                                                                                    // 321
	widget: function() {                                                                                               // 322
		return this.element;                                                                                              // 323
	},                                                                                                                 // 324
                                                                                                                    // 325
	option: function( key, value ) {                                                                                   // 326
		var options = key,                                                                                                // 327
			parts,                                                                                                           // 328
			curOption,                                                                                                       // 329
			i;                                                                                                               // 330
                                                                                                                    // 331
		if ( arguments.length === 0 ) {                                                                                   // 332
			// don't return a reference to the internal hash                                                                 // 333
			return $.widget.extend( {}, this.options );                                                                      // 334
		}                                                                                                                 // 335
                                                                                                                    // 336
		if ( typeof key === "string" ) {                                                                                  // 337
			// handle nested keys, e.g., "foo.bar" => { foo: { bar: ___ } }                                                  // 338
			options = {};                                                                                                    // 339
			parts = key.split( "." );                                                                                        // 340
			key = parts.shift();                                                                                             // 341
			if ( parts.length ) {                                                                                            // 342
				curOption = options[ key ] = $.widget.extend( {}, this.options[ key ] );                                        // 343
				for ( i = 0; i < parts.length - 1; i++ ) {                                                                      // 344
					curOption[ parts[ i ] ] = curOption[ parts[ i ] ] || {};                                                       // 345
					curOption = curOption[ parts[ i ] ];                                                                           // 346
				}                                                                                                               // 347
				key = parts.pop();                                                                                              // 348
				if ( arguments.length === 1 ) {                                                                                 // 349
					return curOption[ key ] === undefined ? null : curOption[ key ];                                               // 350
				}                                                                                                               // 351
				curOption[ key ] = value;                                                                                       // 352
			} else {                                                                                                         // 353
				if ( arguments.length === 1 ) {                                                                                 // 354
					return this.options[ key ] === undefined ? null : this.options[ key ];                                         // 355
				}                                                                                                               // 356
				options[ key ] = value;                                                                                         // 357
			}                                                                                                                // 358
		}                                                                                                                 // 359
                                                                                                                    // 360
		this._setOptions( options );                                                                                      // 361
                                                                                                                    // 362
		return this;                                                                                                      // 363
	},                                                                                                                 // 364
	_setOptions: function( options ) {                                                                                 // 365
		var key;                                                                                                          // 366
                                                                                                                    // 367
		for ( key in options ) {                                                                                          // 368
			this._setOption( key, options[ key ] );                                                                          // 369
		}                                                                                                                 // 370
                                                                                                                    // 371
		return this;                                                                                                      // 372
	},                                                                                                                 // 373
	_setOption: function( key, value ) {                                                                               // 374
		this.options[ key ] = value;                                                                                      // 375
                                                                                                                    // 376
		if ( key === "disabled" ) {                                                                                       // 377
			this.widget()                                                                                                    // 378
				.toggleClass( this.widgetFullName + "-disabled", !!value );                                                     // 379
                                                                                                                    // 380
			// If the widget is becoming disabled, then nothing is interactive                                               // 381
			if ( value ) {                                                                                                   // 382
				this.hoverable.removeClass( "ui-state-hover" );                                                                 // 383
				this.focusable.removeClass( "ui-state-focus" );                                                                 // 384
			}                                                                                                                // 385
		}                                                                                                                 // 386
                                                                                                                    // 387
		return this;                                                                                                      // 388
	},                                                                                                                 // 389
                                                                                                                    // 390
	enable: function() {                                                                                               // 391
		return this._setOptions({ disabled: false });                                                                     // 392
	},                                                                                                                 // 393
	disable: function() {                                                                                              // 394
		return this._setOptions({ disabled: true });                                                                      // 395
	},                                                                                                                 // 396
                                                                                                                    // 397
	_on: function( suppressDisabledCheck, element, handlers ) {                                                        // 398
		var delegateElement,                                                                                              // 399
			instance = this;                                                                                                 // 400
                                                                                                                    // 401
		// no suppressDisabledCheck flag, shuffle arguments                                                               // 402
		if ( typeof suppressDisabledCheck !== "boolean" ) {                                                               // 403
			handlers = element;                                                                                              // 404
			element = suppressDisabledCheck;                                                                                 // 405
			suppressDisabledCheck = false;                                                                                   // 406
		}                                                                                                                 // 407
                                                                                                                    // 408
		// no element argument, shuffle and use this.element                                                              // 409
		if ( !handlers ) {                                                                                                // 410
			handlers = element;                                                                                              // 411
			element = this.element;                                                                                          // 412
			delegateElement = this.widget();                                                                                 // 413
		} else {                                                                                                          // 414
			element = delegateElement = $( element );                                                                        // 415
			this.bindings = this.bindings.add( element );                                                                    // 416
		}                                                                                                                 // 417
                                                                                                                    // 418
		$.each( handlers, function( event, handler ) {                                                                    // 419
			function handlerProxy() {                                                                                        // 420
				// allow widgets to customize the disabled handling                                                             // 421
				// - disabled as an array instead of boolean                                                                    // 422
				// - disabled class as method for disabling individual parts                                                    // 423
				if ( !suppressDisabledCheck &&                                                                                  // 424
						( instance.options.disabled === true ||                                                                       // 425
							$( this ).hasClass( "ui-state-disabled" ) ) ) {                                                              // 426
					return;                                                                                                        // 427
				}                                                                                                               // 428
				return ( typeof handler === "string" ? instance[ handler ] : handler )                                          // 429
					.apply( instance, arguments );                                                                                 // 430
			}                                                                                                                // 431
                                                                                                                    // 432
			// copy the guid so direct unbinding works                                                                       // 433
			if ( typeof handler !== "string" ) {                                                                             // 434
				handlerProxy.guid = handler.guid =                                                                              // 435
					handler.guid || handlerProxy.guid || $.guid++;                                                                 // 436
			}                                                                                                                // 437
                                                                                                                    // 438
			var match = event.match( /^([\w:-]*)\s*(.*)$/ ),                                                                 // 439
				eventName = match[1] + instance.eventNamespace,                                                                 // 440
				selector = match[2];                                                                                            // 441
			if ( selector ) {                                                                                                // 442
				delegateElement.delegate( selector, eventName, handlerProxy );                                                  // 443
			} else {                                                                                                         // 444
				element.bind( eventName, handlerProxy );                                                                        // 445
			}                                                                                                                // 446
		});                                                                                                               // 447
	},                                                                                                                 // 448
                                                                                                                    // 449
	_off: function( element, eventName ) {                                                                             // 450
		eventName = (eventName || "").split( " " ).join( this.eventNamespace + " " ) + this.eventNamespace;               // 451
		element.unbind( eventName ).undelegate( eventName );                                                              // 452
	},                                                                                                                 // 453
                                                                                                                    // 454
	_delay: function( handler, delay ) {                                                                               // 455
		function handlerProxy() {                                                                                         // 456
			return ( typeof handler === "string" ? instance[ handler ] : handler )                                           // 457
				.apply( instance, arguments );                                                                                  // 458
		}                                                                                                                 // 459
		var instance = this;                                                                                              // 460
		return setTimeout( handlerProxy, delay || 0 );                                                                    // 461
	},                                                                                                                 // 462
                                                                                                                    // 463
	_hoverable: function( element ) {                                                                                  // 464
		this.hoverable = this.hoverable.add( element );                                                                   // 465
		this._on( element, {                                                                                              // 466
			mouseenter: function( event ) {                                                                                  // 467
				$( event.currentTarget ).addClass( "ui-state-hover" );                                                          // 468
			},                                                                                                               // 469
			mouseleave: function( event ) {                                                                                  // 470
				$( event.currentTarget ).removeClass( "ui-state-hover" );                                                       // 471
			}                                                                                                                // 472
		});                                                                                                               // 473
	},                                                                                                                 // 474
                                                                                                                    // 475
	_focusable: function( element ) {                                                                                  // 476
		this.focusable = this.focusable.add( element );                                                                   // 477
		this._on( element, {                                                                                              // 478
			focusin: function( event ) {                                                                                     // 479
				$( event.currentTarget ).addClass( "ui-state-focus" );                                                          // 480
			},                                                                                                               // 481
			focusout: function( event ) {                                                                                    // 482
				$( event.currentTarget ).removeClass( "ui-state-focus" );                                                       // 483
			}                                                                                                                // 484
		});                                                                                                               // 485
	},                                                                                                                 // 486
                                                                                                                    // 487
	_trigger: function( type, event, data ) {                                                                          // 488
		var prop, orig,                                                                                                   // 489
			callback = this.options[ type ];                                                                                 // 490
                                                                                                                    // 491
		data = data || {};                                                                                                // 492
		event = $.Event( event );                                                                                         // 493
		event.type = ( type === this.widgetEventPrefix ?                                                                  // 494
			type :                                                                                                           // 495
			this.widgetEventPrefix + type ).toLowerCase();                                                                   // 496
		// the original event may come from any element                                                                   // 497
		// so we need to reset the target on the new event                                                                // 498
		event.target = this.element[ 0 ];                                                                                 // 499
                                                                                                                    // 500
		// copy original event properties over to the new event                                                           // 501
		orig = event.originalEvent;                                                                                       // 502
		if ( orig ) {                                                                                                     // 503
			for ( prop in orig ) {                                                                                           // 504
				if ( !( prop in event ) ) {                                                                                     // 505
					event[ prop ] = orig[ prop ];                                                                                  // 506
				}                                                                                                               // 507
			}                                                                                                                // 508
		}                                                                                                                 // 509
                                                                                                                    // 510
		this.element.trigger( event, data );                                                                              // 511
		return !( $.isFunction( callback ) &&                                                                             // 512
			callback.apply( this.element[0], [ event ].concat( data ) ) === false ||                                         // 513
			event.isDefaultPrevented() );                                                                                    // 514
	}                                                                                                                  // 515
};                                                                                                                  // 516
                                                                                                                    // 517
$.each( { show: "fadeIn", hide: "fadeOut" }, function( method, defaultEffect ) {                                    // 518
	$.Widget.prototype[ "_" + method ] = function( element, options, callback ) {                                      // 519
		if ( typeof options === "string" ) {                                                                              // 520
			options = { effect: options };                                                                                   // 521
		}                                                                                                                 // 522
		var hasOptions,                                                                                                   // 523
			effectName = !options ?                                                                                          // 524
				method :                                                                                                        // 525
				options === true || typeof options === "number" ?                                                               // 526
					defaultEffect :                                                                                                // 527
					options.effect || defaultEffect;                                                                               // 528
		options = options || {};                                                                                          // 529
		if ( typeof options === "number" ) {                                                                              // 530
			options = { duration: options };                                                                                 // 531
		}                                                                                                                 // 532
		hasOptions = !$.isEmptyObject( options );                                                                         // 533
		options.complete = callback;                                                                                      // 534
		if ( options.delay ) {                                                                                            // 535
			element.delay( options.delay );                                                                                  // 536
		}                                                                                                                 // 537
		if ( hasOptions && $.effects && $.effects.effect[ effectName ] ) {                                                // 538
			element[ method ]( options );                                                                                    // 539
		} else if ( effectName !== method && element[ effectName ] ) {                                                    // 540
			element[ effectName ]( options.duration, options.easing, callback );                                             // 541
		} else {                                                                                                          // 542
			element.queue(function( next ) {                                                                                 // 543
				$( this )[ method ]();                                                                                          // 544
				if ( callback ) {                                                                                               // 545
					callback.call( element[ 0 ] );                                                                                 // 546
				}                                                                                                               // 547
				next();                                                                                                         // 548
			});                                                                                                              // 549
		}                                                                                                                 // 550
	};                                                                                                                 // 551
});                                                                                                                 // 552
                                                                                                                    // 553
var widget = $.widget;                                                                                              // 554
                                                                                                                    // 555
                                                                                                                    // 556
                                                                                                                    // 557
}));                                                                                                                // 558
                                                                                                                    // 559
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}).call(this);






(function () {

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                  //
// packages/tomi:upload-jquery/lib/jquery.iframe-transport.js                                                       //
//                                                                                                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                                                                                                    //
/*                                                                                                                  // 1
 * jQuery Iframe Transport Plugin 1.8.2                                                                             // 2
 * https://github.com/blueimp/jQuery-File-Upload                                                                    // 3
 *                                                                                                                  // 4
 * Copyright 2011, Sebastian Tschan                                                                                 // 5
 * https://blueimp.net                                                                                              // 6
 *                                                                                                                  // 7
 * Licensed under the MIT license:                                                                                  // 8
 * http://www.opensource.org/licenses/MIT                                                                           // 9
 */                                                                                                                 // 10
                                                                                                                    // 11
/* global define, window, document */                                                                               // 12
                                                                                                                    // 13
(function (factory) {                                                                                               // 14
    'use strict';                                                                                                   // 15
    if (typeof define === 'function' && define.amd) {                                                               // 16
        // Register as an anonymous AMD module:                                                                     // 17
        define(['jquery'], factory);                                                                                // 18
    } else {                                                                                                        // 19
        // Browser globals:                                                                                         // 20
        factory(window.jQuery);                                                                                     // 21
    }                                                                                                               // 22
}(function ($) {                                                                                                    // 23
    'use strict';                                                                                                   // 24
                                                                                                                    // 25
    // Helper variable to create unique names for the transport iframes:                                            // 26
    var counter = 0;                                                                                                // 27
                                                                                                                    // 28
    // The iframe transport accepts four additional options:                                                        // 29
    // options.fileInput: a jQuery collection of file input fields                                                  // 30
    // options.paramName: the parameter name for the file form data,                                                // 31
    //  overrides the name property of the file input field(s),                                                     // 32
    //  can be a string or an array of strings.                                                                     // 33
    // options.formData: an array of objects with name and value properties,                                        // 34
    //  equivalent to the return data of .serializeArray(), e.g.:                                                   // 35
    //  [{name: 'a', value: 1}, {name: 'b', value: 2}]                                                              // 36
    // options.initialIframeSrc: the URL of the initial iframe src,                                                 // 37
    //  by default set to "javascript:false;"                                                                       // 38
    $.ajaxTransport('iframe', function (options) {                                                                  // 39
        if (options.async) {                                                                                        // 40
            // javascript:false as initial iframe src                                                               // 41
            // prevents warning popups on HTTPS in IE6:                                                             // 42
            /*jshint scripturl: true */                                                                             // 43
            var initialIframeSrc = options.initialIframeSrc || 'javascript:false;',                                 // 44
            /*jshint scripturl: false */                                                                            // 45
                form,                                                                                               // 46
                iframe,                                                                                             // 47
                addParamChar;                                                                                       // 48
            return {                                                                                                // 49
                send: function (_, completeCallback) {                                                              // 50
                    form = $('<form style="display:none;"></form>');                                                // 51
                    form.attr('accept-charset', options.formAcceptCharset);                                         // 52
                    addParamChar = /\?/.test(options.url) ? '&' : '?';                                              // 53
                    // XDomainRequest only supports GET and POST:                                                   // 54
                    if (options.type === 'DELETE') {                                                                // 55
                        options.url = options.url + addParamChar + '_method=DELETE';                                // 56
                        options.type = 'POST';                                                                      // 57
                    } else if (options.type === 'PUT') {                                                            // 58
                        options.url = options.url + addParamChar + '_method=PUT';                                   // 59
                        options.type = 'POST';                                                                      // 60
                    } else if (options.type === 'PATCH') {                                                          // 61
                        options.url = options.url + addParamChar + '_method=PATCH';                                 // 62
                        options.type = 'POST';                                                                      // 63
                    }                                                                                               // 64
                    // IE versions below IE8 cannot set the name property of                                        // 65
                    // elements that have already been added to the DOM,                                            // 66
                    // so we set the name along with the iframe HTML markup:                                        // 67
                    counter += 1;                                                                                   // 68
                    iframe = $(                                                                                     // 69
                        '<iframe src="' + initialIframeSrc +                                                        // 70
                            '" name="iframe-transport-' + counter + '"></iframe>'                                   // 71
                    ).bind('load', function () {                                                                    // 72
                        var fileInputClones,                                                                        // 73
                            paramNames = $.isArray(options.paramName) ?                                             // 74
                                    options.paramName : [options.paramName];                                        // 75
                        iframe                                                                                      // 76
                            .unbind('load')                                                                         // 77
                            .bind('load', function () {                                                             // 78
                                var response;                                                                       // 79
                                // Wrap in a try/catch block to catch exceptions thrown                             // 80
                                // when trying to access cross-domain iframe contents:                              // 81
                                try {                                                                               // 82
                                    response = iframe.contents();                                                   // 83
                                    // Google Chrome and Firefox do not throw an                                    // 84
                                    // exception when calling iframe.contents() on                                  // 85
                                    // cross-domain requests, so we unify the response:                             // 86
                                    if (!response.length || !response[0].firstChild) {                              // 87
                                        throw new Error();                                                          // 88
                                    }                                                                               // 89
                                } catch (e) {                                                                       // 90
                                    response = undefined;                                                           // 91
                                }                                                                                   // 92
                                // The complete callback returns the                                                // 93
                                // iframe content document as response object:                                      // 94
                                completeCallback(                                                                   // 95
                                    200,                                                                            // 96
                                    'success',                                                                      // 97
                                    {'iframe': response}                                                            // 98
                                );                                                                                  // 99
                                // Fix for IE endless progress bar activity bug                                     // 100
                                // (happens on form submits to iframe targets):                                     // 101
                                $('<iframe src="' + initialIframeSrc + '"></iframe>')                               // 102
                                    .appendTo(form);                                                                // 103
                                window.setTimeout(function () {                                                     // 104
                                    // Removing the form in a setTimeout call                                       // 105
                                    // allows Chrome's developer tools to display                                   // 106
                                    // the response result                                                          // 107
                                    form.remove();                                                                  // 108
                                }, 0);                                                                              // 109
                            });                                                                                     // 110
                        form                                                                                        // 111
                            .prop('target', iframe.prop('name'))                                                    // 112
                            .prop('action', options.url)                                                            // 113
                            .prop('method', options.type);                                                          // 114
                        if (options.formData) {                                                                     // 115
                            $.each(options.formData, function (index, field) {                                      // 116
                                $('<input type="hidden"/>')                                                         // 117
                                    .prop('name', field.name)                                                       // 118
                                    .val(field.value)                                                               // 119
                                    .appendTo(form);                                                                // 120
                            });                                                                                     // 121
                        }                                                                                           // 122
                        if (options.fileInput && options.fileInput.length &&                                        // 123
                                options.type === 'POST') {                                                          // 124
                            fileInputClones = options.fileInput.clone();                                            // 125
                            // Insert a clone for each file input field:                                            // 126
                            options.fileInput.after(function (index) {                                              // 127
                                return fileInputClones[index];                                                      // 128
                            });                                                                                     // 129
                            if (options.paramName) {                                                                // 130
                                options.fileInput.each(function (index) {                                           // 131
                                    $(this).prop(                                                                   // 132
                                        'name',                                                                     // 133
                                        paramNames[index] || options.paramName                                      // 134
                                    );                                                                              // 135
                                });                                                                                 // 136
                            }                                                                                       // 137
                            // Appending the file input fields to the hidden form                                   // 138
                            // removes them from their original location:                                           // 139
                            form                                                                                    // 140
                                .append(options.fileInput)                                                          // 141
                                .prop('enctype', 'multipart/form-data')                                             // 142
                                // enctype must be set as encoding for IE:                                          // 143
                                .prop('encoding', 'multipart/form-data');                                           // 144
                            // Remove the HTML5 form attribute from the input(s):                                   // 145
                            options.fileInput.removeAttr('form');                                                   // 146
                        }                                                                                           // 147
                        form.submit();                                                                              // 148
                        // Insert the file input fields at their original location                                  // 149
                        // by replacing the clones with the originals:                                              // 150
                        if (fileInputClones && fileInputClones.length) {                                            // 151
                            options.fileInput.each(function (index, input) {                                        // 152
                                var clone = $(fileInputClones[index]);                                              // 153
                                // Restore the original name and form properties:                                   // 154
                                $(input)                                                                            // 155
                                    .prop('name', clone.prop('name'))                                               // 156
                                    .attr('form', clone.attr('form'));                                              // 157
                                clone.replaceWith(input);                                                           // 158
                            });                                                                                     // 159
                        }                                                                                           // 160
                    });                                                                                             // 161
                    form.append(iframe).appendTo(document.body);                                                    // 162
                },                                                                                                  // 163
                abort: function () {                                                                                // 164
                    if (iframe) {                                                                                   // 165
                        // javascript:false as iframe src aborts the request                                        // 166
                        // and prevents warning popups on HTTPS in IE6.                                             // 167
                        // concat is used to avoid the "Script URL" JSLint error:                                   // 168
                        iframe                                                                                      // 169
                            .unbind('load')                                                                         // 170
                            .prop('src', initialIframeSrc);                                                         // 171
                    }                                                                                               // 172
                    if (form) {                                                                                     // 173
                        form.remove();                                                                              // 174
                    }                                                                                               // 175
                }                                                                                                   // 176
            };                                                                                                      // 177
        }                                                                                                           // 178
    });                                                                                                             // 179
                                                                                                                    // 180
    // The iframe transport returns the iframe content document as response.                                        // 181
    // The following adds converters from iframe to text, json, html, xml                                           // 182
    // and script.                                                                                                  // 183
    // Please note that the Content-Type for JSON responses has to be text/plain                                    // 184
    // or text/html, if the browser doesn't include application/json in the                                         // 185
    // Accept header, else IE will show a download dialog.                                                          // 186
    // The Content-Type for XML responses on the other hand has to be always                                        // 187
    // application/xml or text/xml, so IE properly parses the XML response.                                         // 188
    // See also                                                                                                     // 189
    // https://github.com/blueimp/jQuery-File-Upload/wiki/Setup#content-type-negotiation                            // 190
    $.ajaxSetup({                                                                                                   // 191
        converters: {                                                                                               // 192
            'iframe text': function (iframe) {                                                                      // 193
                return iframe && $(iframe[0].body).text();                                                          // 194
            },                                                                                                      // 195
            'iframe json': function (iframe) {                                                                      // 196
                return iframe && $.parseJSON($(iframe[0].body).text());                                             // 197
            },                                                                                                      // 198
            'iframe html': function (iframe) {                                                                      // 199
                return iframe && $(iframe[0].body).html();                                                          // 200
            },                                                                                                      // 201
            'iframe xml': function (iframe) {                                                                       // 202
                var xmlDoc = iframe && iframe[0];                                                                   // 203
                return xmlDoc && $.isXMLDoc(xmlDoc) ? xmlDoc :                                                      // 204
                        $.parseXML((xmlDoc.XMLDocument && xmlDoc.XMLDocument.xml) ||                                // 205
                            $(xmlDoc.body).html());                                                                 // 206
            },                                                                                                      // 207
            'iframe script': function (iframe) {                                                                    // 208
                return iframe && $.globalEval($(iframe[0].body).text());                                            // 209
            }                                                                                                       // 210
        }                                                                                                           // 211
    });                                                                                                             // 212
                                                                                                                    // 213
}));                                                                                                                // 214
                                                                                                                    // 215
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}).call(this);






(function () {

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                  //
// packages/tomi:upload-jquery/lib/jquery.fileupload.js                                                             //
//                                                                                                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                                                                                                    //
/*                                                                                                                  // 1
 * jQuery File Upload Plugin 5.42.0                                                                                 // 2
 * https://github.com/blueimp/jQuery-File-Upload                                                                    // 3
 *                                                                                                                  // 4
 * Copyright 2010, Sebastian Tschan                                                                                 // 5
 * https://blueimp.net                                                                                              // 6
 *                                                                                                                  // 7
 * Licensed under the MIT license:                                                                                  // 8
 * http://www.opensource.org/licenses/MIT                                                                           // 9
 */                                                                                                                 // 10
                                                                                                                    // 11
/* jshint nomen:false */                                                                                            // 12
/* global define, window, document, location, Blob, FormData */                                                     // 13
                                                                                                                    // 14
(function (factory) {                                                                                               // 15
  'use strict';                                                                                                     // 16
  // Added by me so that it compiles with velocity                                                                  // 17
  if (!window) {                                                                                                    // 18
    window = {};                                                                                                    // 19
  }                                                                                                                 // 20
  if (typeof define === 'function' && define.amd) {                                                                 // 21
    // Register as an anonymous AMD module:                                                                         // 22
    define([                                                                                                        // 23
      'jquery',                                                                                                     // 24
      'jquery.ui.widget'                                                                                            // 25
    ], factory);                                                                                                    // 26
  } else {                                                                                                          // 27
    // Browser globals:                                                                                             // 28
    factory(window.jQuery);                                                                                         // 29
  }                                                                                                                 // 30
}(function ($) {                                                                                                    // 31
  'use strict';                                                                                                     // 32
                                                                                                                    // 33
  // Detect file input support, based on                                                                            // 34
  // http://viljamis.com/blog/2012/file-upload-support-on-mobile/                                                   // 35
  $.support.fileInput = !(new RegExp(                                                                               // 36
    // Handle devices which give false positives for the feature detection:                                         // 37
    '(Android (1\\.[0156]|2\\.[01]))' +                                                                             // 38
    '|(Windows Phone (OS 7|8\\.0))|(XBLWP)|(ZuneWP)|(WPDesktop)' +                                                  // 39
    '|(w(eb)?OSBrowser)|(webOS)' +                                                                                  // 40
    '|(Kindle/(1\\.0|2\\.[05]|3\\.0))'                                                                              // 41
  ).test(window.navigator.userAgent) ||                                                                             // 42
    // Feature detection for all other devices:                                                                     // 43
  $('<input type="file">').prop('disabled'));                                                                       // 44
                                                                                                                    // 45
  // The FileReader API is not actually used, but works as feature detection,                                       // 46
  // as some Safari versions (5?) support XHR file uploads via the FormData API,                                    // 47
  // but not non-multipart XHR file uploads.                                                                        // 48
  // window.XMLHttpRequestUpload is not available on IE10, so we check for                                          // 49
  // window.ProgressEvent instead to detect XHR2 file upload capability:                                            // 50
  $.support.xhrFileUpload = !!(window.ProgressEvent && window.FileReader);                                          // 51
  $.support.xhrFormDataFileUpload = !!window.FormData;                                                              // 52
                                                                                                                    // 53
  // Detect support for Blob slicing (required for chunked uploads):                                                // 54
  $.support.blobSlice = window.Blob && (Blob.prototype.slice ||                                                     // 55
  Blob.prototype.webkitSlice || Blob.prototype.mozSlice);                                                           // 56
                                                                                                                    // 57
  // Helper function to create drag handlers for dragover/dragenter/dragleave:                                      // 58
  function getDragHandler(type) {                                                                                   // 59
    var isDragOver = type === 'dragover';                                                                           // 60
    return function (e) {                                                                                           // 61
      e.dataTransfer = e.originalEvent && e.originalEvent.dataTransfer;                                             // 62
      var dataTransfer = e.dataTransfer;                                                                            // 63
      if (dataTransfer && $.inArray('Files', dataTransfer.types) !== -1 &&                                          // 64
        this._trigger(                                                                                              // 65
          type,                                                                                                     // 66
          $.Event(type, {delegatedEvent: e})                                                                        // 67
        ) !== false) {                                                                                              // 68
        e.preventDefault();                                                                                         // 69
        if (isDragOver) {                                                                                           // 70
          dataTransfer.dropEffect = 'copy';                                                                         // 71
        }                                                                                                           // 72
      }                                                                                                             // 73
    };                                                                                                              // 74
  }                                                                                                                 // 75
                                                                                                                    // 76
  // The fileupload widget listens for change events on file input fields defined                                   // 77
  // via fileInput setting and paste or drop events of the given dropZone.                                          // 78
  // In addition to the default jQuery Widget methods, the fileupload widget                                        // 79
  // exposes the "add" and "send" methods, to add or directly send files using                                      // 80
  // the fileupload API.                                                                                            // 81
  // By default, files added via file input selection, paste, drag & drop or                                        // 82
  // "add" method are uploaded immediately, but it is possible to override                                          // 83
  // the "add" callback option to queue file uploads.                                                               // 84
  $.widget('blueimp.fileupload', {                                                                                  // 85
                                                                                                                    // 86
    options: {                                                                                                      // 87
      // The drop target element(s), by the default the complete document.                                          // 88
      // Set to null to disable drag & drop support:                                                                // 89
      dropZone: $(document),                                                                                        // 90
      // The paste target element(s), by the default undefined.                                                     // 91
      // Set to a DOM node or jQuery object to enable file pasting:                                                 // 92
      pasteZone: undefined,                                                                                         // 93
      // The file input field(s), that are listened to for change events.                                           // 94
      // If undefined, it is set to the file input fields inside                                                    // 95
      // of the widget element on plugin initialization.                                                            // 96
      // Set to null to disable the change listener.                                                                // 97
      fileInput: undefined,                                                                                         // 98
      // By default, the file input field is replaced with a clone after                                            // 99
      // each input field change event. This is required for iframe transport                                       // 100
      // queues and allows change events to be fired for the same file                                              // 101
      // selection, but can be disabled by setting the following option to false:                                   // 102
      replaceFileInput: true,                                                                                       // 103
      // The parameter name for the file form data (the request argument name).                                     // 104
      // If undefined or empty, the name property of the file input field is                                        // 105
      // used, or "files[]" if the file input name property is also empty,                                          // 106
      // can be a string or an array of strings:                                                                    // 107
      paramName: undefined,                                                                                         // 108
      // By default, each file of a selection is uploaded using an individual                                       // 109
      // request for XHR type uploads. Set to false to upload file                                                  // 110
      // selections in one request each:                                                                            // 111
      singleFileUploads: true,                                                                                      // 112
      // To limit the number of files uploaded with one XHR request,                                                // 113
      // set the following option to an integer greater than 0:                                                     // 114
      limitMultiFileUploads: undefined,                                                                             // 115
      // The following option limits the number of files uploaded with one                                          // 116
      // XHR request to keep the request size under or equal to the defined                                         // 117
      // limit in bytes:                                                                                            // 118
      limitMultiFileUploadSize: undefined,                                                                          // 119
      // Multipart file uploads add a number of bytes to each uploaded file,                                        // 120
      // therefore the following option adds an overhead for each file used                                         // 121
      // in the limitMultiFileUploadSize configuration:                                                             // 122
      limitMultiFileUploadSizeOverhead: 512,                                                                        // 123
      // Set the following option to true to issue all file upload requests                                         // 124
      // in a sequential order:                                                                                     // 125
      sequentialUploads: false,                                                                                     // 126
      // To limit the number of concurrent uploads,                                                                 // 127
      // set the following option to an integer greater than 0:                                                     // 128
      limitConcurrentUploads: undefined,                                                                            // 129
      // Set the following option to true to force iframe transport uploads:                                        // 130
      forceIframeTransport: false,                                                                                  // 131
      // Set the following option to the location of a redirect url on the                                          // 132
      // origin server, for cross-domain iframe transport uploads:                                                  // 133
      redirect: undefined,                                                                                          // 134
      // The parameter name for the redirect url, sent as part of the form                                          // 135
      // data and set to 'redirect' if this option is empty:                                                        // 136
      redirectParamName: undefined,                                                                                 // 137
      // Set the following option to the location of a postMessage window,                                          // 138
      // to enable postMessage transport uploads:                                                                   // 139
      postMessage: undefined,                                                                                       // 140
      // By default, XHR file uploads are sent as multipart/form-data.                                              // 141
      // The iframe transport is always using multipart/form-data.                                                  // 142
      // Set to false to enable non-multipart XHR uploads:                                                          // 143
      multipart: true,                                                                                              // 144
      // To upload large files in smaller chunks, set the following option                                          // 145
      // to a preferred maximum chunk size. If set to 0, null or undefined,                                         // 146
      // or the browser does not support the required Blob API, files will                                          // 147
      // be uploaded as a whole.                                                                                    // 148
      maxChunkSize: undefined,                                                                                      // 149
      // When a non-multipart upload or a chunked multipart upload has been                                         // 150
      // aborted, this option can be used to resume the upload by setting                                           // 151
      // it to the size of the already uploaded bytes. This option is most                                          // 152
      // useful when modifying the options object inside of the "add" or                                            // 153
      // "send" callbacks, as the options are cloned for each file upload.                                          // 154
      uploadedBytes: undefined,                                                                                     // 155
      // By default, failed (abort or error) file uploads are removed from the                                      // 156
      // global progress calculation. Set the following option to false to                                          // 157
      // prevent recalculating the global progress data:                                                            // 158
      recalculateProgress: true,                                                                                    // 159
      // Interval in milliseconds to calculate and trigger progress events:                                         // 160
      progressInterval: 100,                                                                                        // 161
      // Interval in milliseconds to calculate progress bitrate:                                                    // 162
      bitrateInterval: 500,                                                                                         // 163
      // By default, uploads are started automatically when adding files:                                           // 164
      autoUpload: true,                                                                                             // 165
                                                                                                                    // 166
      // Error and info messages:                                                                                   // 167
      messages: {                                                                                                   // 168
        uploadedBytes: 'Uploaded bytes exceed file size'                                                            // 169
      },                                                                                                            // 170
                                                                                                                    // 171
      // Translation function, gets the message key to be translated                                                // 172
      // and an object with context specific data as arguments:                                                     // 173
      i18n: function (message, context) {                                                                           // 174
        message = this.messages[message] || message.toString();                                                     // 175
        if (context) {                                                                                              // 176
          $.each(context, function (key, value) {                                                                   // 177
            message = message.replace('{' + key + '}', value);                                                      // 178
          });                                                                                                       // 179
        }                                                                                                           // 180
        return message;                                                                                             // 181
      },                                                                                                            // 182
                                                                                                                    // 183
      // Additional form data to be sent along with the file uploads can be set                                     // 184
      // using this option, which accepts an array of objects with name and                                         // 185
      // value properties, a function returning such an array, a FormData                                           // 186
      // object (for XHR file uploads), or a simple object.                                                         // 187
      // The form of the first fileInput is given as parameter to the function:                                     // 188
      formData: function (form) {                                                                                   // 189
        return form.serializeArray();                                                                               // 190
      },                                                                                                            // 191
                                                                                                                    // 192
      // The add callback is invoked as soon as files are added to the fileupload                                   // 193
      // widget (via file input selection, drag & drop, paste or add API call).                                     // 194
      // If the singleFileUploads option is enabled, this callback will be                                          // 195
      // called once for each file in the selection for XHR file uploads, else                                      // 196
      // once for each file selection.                                                                              // 197
      //                                                                                                            // 198
      // The upload starts when the submit method is invoked on the data parameter.                                 // 199
      // The data object contains a files property holding the added files                                          // 200
      // and allows you to override plugin options as well as define ajax settings.                                 // 201
      //                                                                                                            // 202
      // Listeners for this callback can also be bound the following way:                                           // 203
      // .bind('fileuploadadd', func);                                                                              // 204
      //                                                                                                            // 205
      // data.submit() returns a Promise object and allows to attach additional                                     // 206
      // handlers using jQuery's Deferred callbacks:                                                                // 207
      // data.submit().done(func).fail(func).always(func);                                                          // 208
      add: function (e, data) {                                                                                     // 209
        if (e.isDefaultPrevented()) {                                                                               // 210
          return false;                                                                                             // 211
        }                                                                                                           // 212
        if (data.autoUpload || (data.autoUpload !== false &&                                                        // 213
          $(this).fileupload('option', 'autoUpload'))) {                                                            // 214
          data.process().done(function () {                                                                         // 215
            data.submit();                                                                                          // 216
          });                                                                                                       // 217
        }                                                                                                           // 218
      },                                                                                                            // 219
                                                                                                                    // 220
      // Other callbacks:                                                                                           // 221
                                                                                                                    // 222
      // Callback for the submit event of each file upload:                                                         // 223
      // submit: function (e, data) {}, // .bind('fileuploadsubmit', func);                                         // 224
                                                                                                                    // 225
      // Callback for the start of each file upload request:                                                        // 226
      // send: function (e, data) {}, // .bind('fileuploadsend', func);                                             // 227
                                                                                                                    // 228
      // Callback for successful uploads:                                                                           // 229
      // done: function (e, data) {}, // .bind('fileuploaddone', func);                                             // 230
                                                                                                                    // 231
      // Callback for failed (abort or error) uploads:                                                              // 232
      // fail: function (e, data) {}, // .bind('fileuploadfail', func);                                             // 233
                                                                                                                    // 234
      // Callback for completed (success, abort or error) requests:                                                 // 235
      // always: function (e, data) {}, // .bind('fileuploadalways', func);                                         // 236
                                                                                                                    // 237
      // Callback for upload progress events:                                                                       // 238
      // progress: function (e, data) {}, // .bind('fileuploadprogress', func);                                     // 239
                                                                                                                    // 240
      // Callback for global upload progress events:                                                                // 241
      // progressall: function (e, data) {}, // .bind('fileuploadprogressall', func);                               // 242
                                                                                                                    // 243
      // Callback for uploads start, equivalent to the global ajaxStart event:                                      // 244
      // start: function (e) {}, // .bind('fileuploadstart', func);                                                 // 245
                                                                                                                    // 246
      // Callback for uploads stop, equivalent to the global ajaxStop event:                                        // 247
      // stop: function (e) {}, // .bind('fileuploadstop', func);                                                   // 248
                                                                                                                    // 249
      // Callback for change events of the fileInput(s):                                                            // 250
      // change: function (e, data) {}, // .bind('fileuploadchange', func);                                         // 251
                                                                                                                    // 252
      // Callback for paste events to the pasteZone(s):                                                             // 253
      // paste: function (e, data) {}, // .bind('fileuploadpaste', func);                                           // 254
                                                                                                                    // 255
      // Callback for drop events of the dropZone(s):                                                               // 256
      // drop: function (e, data) {}, // .bind('fileuploaddrop', func);                                             // 257
                                                                                                                    // 258
      // Callback for dragover events of the dropZone(s):                                                           // 259
      // dragover: function (e) {}, // .bind('fileuploaddragover', func);                                           // 260
                                                                                                                    // 261
      // Callback for the start of each chunk upload request:                                                       // 262
      // chunksend: function (e, data) {}, // .bind('fileuploadchunksend', func);                                   // 263
                                                                                                                    // 264
      // Callback for successful chunk uploads:                                                                     // 265
      // chunkdone: function (e, data) {}, // .bind('fileuploadchunkdone', func);                                   // 266
                                                                                                                    // 267
      // Callback for failed (abort or error) chunk uploads:                                                        // 268
      // chunkfail: function (e, data) {}, // .bind('fileuploadchunkfail', func);                                   // 269
                                                                                                                    // 270
      // Callback for completed (success, abort or error) chunk upload requests:                                    // 271
      // chunkalways: function (e, data) {}, // .bind('fileuploadchunkalways', func);                               // 272
                                                                                                                    // 273
      // The plugin options are used as settings object for the ajax calls.                                         // 274
      // The following are jQuery ajax settings required for the file uploads:                                      // 275
      processData: false,                                                                                           // 276
      contentType: false,                                                                                           // 277
      cache: false                                                                                                  // 278
    },                                                                                                              // 279
                                                                                                                    // 280
    // A list of options that require reinitializing event listeners and/or                                         // 281
    // special initialization code:                                                                                 // 282
    _specialOptions: [                                                                                              // 283
      'fileInput',                                                                                                  // 284
      'dropZone',                                                                                                   // 285
      'pasteZone',                                                                                                  // 286
      'multipart',                                                                                                  // 287
      'forceIframeTransport'                                                                                        // 288
    ],                                                                                                              // 289
                                                                                                                    // 290
    _blobSlice: $.support.blobSlice && function () {                                                                // 291
      var slice = this.slice || this.webkitSlice || this.mozSlice;                                                  // 292
      return slice.apply(this, arguments);                                                                          // 293
    },                                                                                                              // 294
                                                                                                                    // 295
    _BitrateTimer: function () {                                                                                    // 296
      this.timestamp = ((Date.now) ? Date.now() : (new Date()).getTime());                                          // 297
      this.loaded = 0;                                                                                              // 298
      this.bitrate = 0;                                                                                             // 299
      this.getBitrate = function (now, loaded, interval) {                                                          // 300
        var timeDiff = now - this.timestamp;                                                                        // 301
        if (!this.bitrate || !interval || timeDiff > interval) {                                                    // 302
          this.bitrate = (loaded - this.loaded) * (1000 / timeDiff) * 8;                                            // 303
          this.loaded = loaded;                                                                                     // 304
          this.timestamp = now;                                                                                     // 305
        }                                                                                                           // 306
        return this.bitrate;                                                                                        // 307
      };                                                                                                            // 308
    },                                                                                                              // 309
                                                                                                                    // 310
    _isXHRUpload: function (options) {                                                                              // 311
      return !options.forceIframeTransport &&                                                                       // 312
        ((!options.multipart && $.support.xhrFileUpload) ||                                                         // 313
        $.support.xhrFormDataFileUpload);                                                                           // 314
    },                                                                                                              // 315
                                                                                                                    // 316
    _getFormData: function (options) {                                                                              // 317
      var formData;                                                                                                 // 318
      if ($.type(options.formData) === 'function') {                                                                // 319
        return options.formData(options.form);                                                                      // 320
      }                                                                                                             // 321
      if ($.isArray(options.formData)) {                                                                            // 322
        return options.formData;                                                                                    // 323
      }                                                                                                             // 324
      if ($.type(options.formData) === 'object') {                                                                  // 325
        formData = [];                                                                                              // 326
        $.each(options.formData, function (name, value) {                                                           // 327
          formData.push({name: name, value: value});                                                                // 328
        });                                                                                                         // 329
        return formData;                                                                                            // 330
      }                                                                                                             // 331
      return [];                                                                                                    // 332
    },                                                                                                              // 333
                                                                                                                    // 334
    _getTotal: function (files) {                                                                                   // 335
      var total = 0;                                                                                                // 336
      $.each(files, function (index, file) {                                                                        // 337
        total += file.size || 1;                                                                                    // 338
      });                                                                                                           // 339
      return total;                                                                                                 // 340
    },                                                                                                              // 341
                                                                                                                    // 342
    _initProgressObject: function (obj) {                                                                           // 343
      var progress = {                                                                                              // 344
        loaded: 0,                                                                                                  // 345
        total: 0,                                                                                                   // 346
        bitrate: 0                                                                                                  // 347
      };                                                                                                            // 348
      if (obj._progress) {                                                                                          // 349
        $.extend(obj._progress, progress);                                                                          // 350
      } else {                                                                                                      // 351
        obj._progress = progress;                                                                                   // 352
      }                                                                                                             // 353
    },                                                                                                              // 354
                                                                                                                    // 355
    _initResponseObject: function (obj) {                                                                           // 356
      var prop;                                                                                                     // 357
      if (obj._response) {                                                                                          // 358
        for (prop in obj._response) {                                                                               // 359
          if (obj._response.hasOwnProperty(prop)) {                                                                 // 360
            delete obj._response[prop];                                                                             // 361
          }                                                                                                         // 362
        }                                                                                                           // 363
      } else {                                                                                                      // 364
        obj._response = {};                                                                                         // 365
      }                                                                                                             // 366
    },                                                                                                              // 367
                                                                                                                    // 368
    _onProgress: function (e, data) {                                                                               // 369
      if (e.lengthComputable) {                                                                                     // 370
        var now = ((Date.now) ? Date.now() : (new Date()).getTime()),                                               // 371
          loaded;                                                                                                   // 372
        if (data._time && data.progressInterval &&                                                                  // 373
          (now - data._time < data.progressInterval) &&                                                             // 374
          e.loaded !== e.total) {                                                                                   // 375
          return;                                                                                                   // 376
        }                                                                                                           // 377
        data._time = now;                                                                                           // 378
        loaded = Math.floor(                                                                                        // 379
          e.loaded / e.total * (data.chunkSize || data._progress.total)                                             // 380
        ) + (data.uploadedBytes || 0);                                                                              // 381
        // Add the difference from the previously loaded state                                                      // 382
        // to the global loaded counter:                                                                            // 383
        this._progress.loaded += (loaded - data._progress.loaded);                                                  // 384
        this._progress.bitrate = this._bitrateTimer.getBitrate(                                                     // 385
          now,                                                                                                      // 386
          this._progress.loaded,                                                                                    // 387
          data.bitrateInterval                                                                                      // 388
        );                                                                                                          // 389
        data._progress.loaded = data.loaded = loaded;                                                               // 390
        data._progress.bitrate = data.bitrate = data._bitrateTimer.getBitrate(                                      // 391
          now,                                                                                                      // 392
          loaded,                                                                                                   // 393
          data.bitrateInterval                                                                                      // 394
        );                                                                                                          // 395
        // Trigger a custom progress event with a total data property set                                           // 396
        // to the file size(s) of the current upload and a loaded data                                              // 397
        // property calculated accordingly:                                                                         // 398
        this._trigger(                                                                                              // 399
          'progress',                                                                                               // 400
          $.Event('progress', {delegatedEvent: e}),                                                                 // 401
          data                                                                                                      // 402
        );                                                                                                          // 403
        // Trigger a global progress event for all current file uploads,                                            // 404
        // including ajax calls queued for sequential file uploads:                                                 // 405
        this._trigger(                                                                                              // 406
          'progressall',                                                                                            // 407
          $.Event('progressall', {delegatedEvent: e}),                                                              // 408
          this._progress                                                                                            // 409
        );                                                                                                          // 410
      }                                                                                                             // 411
    },                                                                                                              // 412
                                                                                                                    // 413
    _initProgressListener: function (options) {                                                                     // 414
      var that = this,                                                                                              // 415
        xhr = options.xhr ? options.xhr() : $.ajaxSettings.xhr();                                                   // 416
      // Accesss to the native XHR object is required to add event listeners                                        // 417
      // for the upload progress event:                                                                             // 418
      if (xhr.upload) {                                                                                             // 419
        $(xhr.upload).bind('progress', function (e) {                                                               // 420
          var oe = e.originalEvent;                                                                                 // 421
          // Make sure the progress event properties get copied over:                                               // 422
          e.lengthComputable = oe.lengthComputable;                                                                 // 423
          e.loaded = oe.loaded;                                                                                     // 424
          e.total = oe.total;                                                                                       // 425
          that._onProgress(e, options);                                                                             // 426
        });                                                                                                         // 427
        options.xhr = function () {                                                                                 // 428
          return xhr;                                                                                               // 429
        };                                                                                                          // 430
      }                                                                                                             // 431
    },                                                                                                              // 432
                                                                                                                    // 433
    _isInstanceOf: function (type, obj) {                                                                           // 434
      // Cross-frame instanceof check                                                                               // 435
      return Object.prototype.toString.call(obj) === '[object ' + type + ']';                                       // 436
    },                                                                                                              // 437
                                                                                                                    // 438
    _initXHRData: function (options) {                                                                              // 439
      var that = this,                                                                                              // 440
        formData,                                                                                                   // 441
        file = options.files[0],                                                                                    // 442
      // Ignore non-multipart setting if not supported:                                                             // 443
        multipart = options.multipart || !$.support.xhrFileUpload,                                                  // 444
        paramName = $.type(options.paramName) === 'array' ?                                                         // 445
          options.paramName[0] : options.paramName;                                                                 // 446
      options.headers = $.extend({}, options.headers);                                                              // 447
      if (options.contentRange) {                                                                                   // 448
        options.headers['Content-Range'] = options.contentRange;                                                    // 449
      }                                                                                                             // 450
      if (!multipart || options.blob || !this._isInstanceOf('File', file)) {                                        // 451
        options.headers['Content-Disposition'] = 'attachment; filename="' +                                         // 452
        encodeURI(file.name) + '"';                                                                                 // 453
      }                                                                                                             // 454
      if (!multipart) {                                                                                             // 455
        options.contentType = file.type || 'application/octet-stream';                                              // 456
        options.data = options.blob || file;                                                                        // 457
      } else if ($.support.xhrFormDataFileUpload) {                                                                 // 458
        if (options.postMessage) {                                                                                  // 459
          // window.postMessage does not allow sending FormData                                                     // 460
          // objects, so we just add the File/Blob objects to                                                       // 461
          // the formData array and let the postMessage window                                                      // 462
          // create the FormData object out of this array:                                                          // 463
          formData = this._getFormData(options);                                                                    // 464
          if (options.blob) {                                                                                       // 465
            formData.push({                                                                                         // 466
              name: paramName,                                                                                      // 467
              value: options.blob                                                                                   // 468
            });                                                                                                     // 469
          } else {                                                                                                  // 470
            $.each(options.files, function (index, file) {                                                          // 471
              formData.push({                                                                                       // 472
                name: ($.type(options.paramName) === 'array' &&                                                     // 473
                options.paramName[index]) || paramName,                                                             // 474
                value: file                                                                                         // 475
              });                                                                                                   // 476
            });                                                                                                     // 477
          }                                                                                                         // 478
        } else {                                                                                                    // 479
          if (that._isInstanceOf('FormData', options.formData)) {                                                   // 480
            formData = options.formData;                                                                            // 481
          } else {                                                                                                  // 482
            formData = new FormData();                                                                              // 483
            $.each(this._getFormData(options), function (index, field) {                                            // 484
              formData.append(field.name, field.value);                                                             // 485
            });                                                                                                     // 486
          }                                                                                                         // 487
          if (options.blob) {                                                                                       // 488
            formData.append(paramName, options.blob, file.name);                                                    // 489
          } else {                                                                                                  // 490
            $.each(options.files, function (index, file) {                                                          // 491
              // This check allows the tests to run with                                                            // 492
              // dummy objects:                                                                                     // 493
              if (that._isInstanceOf('File', file) ||                                                               // 494
                that._isInstanceOf('Blob', file)) {                                                                 // 495
                formData.append(                                                                                    // 496
                  ($.type(options.paramName) === 'array' &&                                                         // 497
                  options.paramName[index]) || paramName,                                                           // 498
                  file,                                                                                             // 499
                  file.uploadName || file.name                                                                      // 500
                );                                                                                                  // 501
              }                                                                                                     // 502
            });                                                                                                     // 503
          }                                                                                                         // 504
        }                                                                                                           // 505
        options.data = formData;                                                                                    // 506
      }                                                                                                             // 507
      // Blob reference is not needed anymore, free memory:                                                         // 508
      options.blob = null;                                                                                          // 509
    },                                                                                                              // 510
                                                                                                                    // 511
    _initIframeSettings: function (options) {                                                                       // 512
      var targetHost = $('<a></a>').prop('href', options.url).prop('host');                                         // 513
      // Setting the dataType to iframe enables the iframe transport:                                               // 514
      options.dataType = 'iframe ' + (options.dataType || '');                                                      // 515
      // The iframe transport accepts a serialized array as form data:                                              // 516
      options.formData = this._getFormData(options);                                                                // 517
      // Add redirect url to form data on cross-domain uploads:                                                     // 518
      if (options.redirect && targetHost && targetHost !== location.host) {                                         // 519
        options.formData.push({                                                                                     // 520
          name: options.redirectParamName || 'redirect',                                                            // 521
          value: options.redirect                                                                                   // 522
        });                                                                                                         // 523
      }                                                                                                             // 524
    },                                                                                                              // 525
                                                                                                                    // 526
    _initDataSettings: function (options) {                                                                         // 527
      if (this._isXHRUpload(options)) {                                                                             // 528
        if (!this._chunkedUpload(options, true)) {                                                                  // 529
          if (!options.data) {                                                                                      // 530
            this._initXHRData(options);                                                                             // 531
          }                                                                                                         // 532
          this._initProgressListener(options);                                                                      // 533
        }                                                                                                           // 534
        if (options.postMessage) {                                                                                  // 535
          // Setting the dataType to postmessage enables the                                                        // 536
          // postMessage transport:                                                                                 // 537
          options.dataType = 'postmessage ' + (options.dataType || '');                                             // 538
        }                                                                                                           // 539
      } else {                                                                                                      // 540
        this._initIframeSettings(options);                                                                          // 541
      }                                                                                                             // 542
    },                                                                                                              // 543
                                                                                                                    // 544
    _getParamName: function (options) {                                                                             // 545
      var fileInput = $(options.fileInput),                                                                         // 546
        paramName = options.paramName;                                                                              // 547
      if (!paramName) {                                                                                             // 548
        paramName = [];                                                                                             // 549
        fileInput.each(function () {                                                                                // 550
          var input = $(this),                                                                                      // 551
            name = input.prop('name') || 'files[]',                                                                 // 552
            i = (input.prop('files') || [1]).length;                                                                // 553
          while (i) {                                                                                               // 554
            paramName.push(name);                                                                                   // 555
            i -= 1;                                                                                                 // 556
          }                                                                                                         // 557
        });                                                                                                         // 558
        if (!paramName.length) {                                                                                    // 559
          paramName = [fileInput.prop('name') || 'files[]'];                                                        // 560
        }                                                                                                           // 561
      } else if (!$.isArray(paramName)) {                                                                           // 562
        paramName = [paramName];                                                                                    // 563
      }                                                                                                             // 564
      return paramName;                                                                                             // 565
    },                                                                                                              // 566
                                                                                                                    // 567
    _initFormSettings: function (options) {                                                                         // 568
      // Retrieve missing options from the input field and the                                                      // 569
      // associated form, if available:                                                                             // 570
      if (!options.form || !options.form.length) {                                                                  // 571
        options.form = $(options.fileInput.prop('form'));                                                           // 572
        // If the given file input doesn't have an associated form,                                                 // 573
        // use the default widget file input's form:                                                                // 574
        if (!options.form.length) {                                                                                 // 575
          options.form = $(this.options.fileInput.prop('form'));                                                    // 576
        }                                                                                                           // 577
      }                                                                                                             // 578
      options.paramName = this._getParamName(options);                                                              // 579
      if (!options.url) {                                                                                           // 580
        options.url = options.form.prop('action') || location.href;                                                 // 581
      }                                                                                                             // 582
      // The HTTP request method must be "POST" or "PUT":                                                           // 583
      options.type = (options.type ||                                                                               // 584
      ($.type(options.form.prop('method')) === 'string' &&                                                          // 585
      options.form.prop('method')) || ''                                                                            // 586
      ).toUpperCase();                                                                                              // 587
      if (options.type !== 'POST' && options.type !== 'PUT' &&                                                      // 588
        options.type !== 'PATCH') {                                                                                 // 589
        options.type = 'POST';                                                                                      // 590
      }                                                                                                             // 591
      if (!options.formAcceptCharset) {                                                                             // 592
        options.formAcceptCharset = options.form.attr('accept-charset');                                            // 593
      }                                                                                                             // 594
    },                                                                                                              // 595
                                                                                                                    // 596
    _getAJAXSettings: function (data) {                                                                             // 597
      var options = $.extend({}, this.options, data);                                                               // 598
      this._initFormSettings(options);                                                                              // 599
      this._initDataSettings(options);                                                                              // 600
      return options;                                                                                               // 601
    },                                                                                                              // 602
                                                                                                                    // 603
    // jQuery 1.6 doesn't provide .state(),                                                                         // 604
    // while jQuery 1.8+ removed .isRejected() and .isResolved():                                                   // 605
    _getDeferredState: function (deferred) {                                                                        // 606
      if (deferred.state) {                                                                                         // 607
        return deferred.state();                                                                                    // 608
      }                                                                                                             // 609
      if (deferred.isResolved()) {                                                                                  // 610
        return 'resolved';                                                                                          // 611
      }                                                                                                             // 612
      if (deferred.isRejected()) {                                                                                  // 613
        return 'rejected';                                                                                          // 614
      }                                                                                                             // 615
      return 'pending';                                                                                             // 616
    },                                                                                                              // 617
                                                                                                                    // 618
    // Maps jqXHR callbacks to the equivalent                                                                       // 619
    // methods of the given Promise object:                                                                         // 620
    _enhancePromise: function (promise) {                                                                           // 621
      promise.success = promise.done;                                                                               // 622
      promise.error = promise.fail;                                                                                 // 623
      promise.complete = promise.always;                                                                            // 624
      return promise;                                                                                               // 625
    },                                                                                                              // 626
                                                                                                                    // 627
    // Creates and returns a Promise object enhanced with                                                           // 628
    // the jqXHR methods abort, success, error and complete:                                                        // 629
    _getXHRPromise: function (resolveOrReject, context, args) {                                                     // 630
      var dfd = $.Deferred(),                                                                                       // 631
        promise = dfd.promise();                                                                                    // 632
      context = context || this.options.context || promise;                                                         // 633
      if (resolveOrReject === true) {                                                                               // 634
        dfd.resolveWith(context, args);                                                                             // 635
      } else if (resolveOrReject === false) {                                                                       // 636
        dfd.rejectWith(context, args);                                                                              // 637
      }                                                                                                             // 638
      promise.abort = dfd.promise;                                                                                  // 639
      return this._enhancePromise(promise);                                                                         // 640
    },                                                                                                              // 641
                                                                                                                    // 642
    // Adds convenience methods to the data callback argument:                                                      // 643
    _addConvenienceMethods: function (e, data) {                                                                    // 644
      var that = this,                                                                                              // 645
        getPromise = function (args) {                                                                              // 646
          return $.Deferred().resolveWith(that, args).promise();                                                    // 647
        };                                                                                                          // 648
      data.process = function (resolveFunc, rejectFunc) {                                                           // 649
        if (resolveFunc || rejectFunc) {                                                                            // 650
          data._processQueue = this._processQueue =                                                                 // 651
            (this._processQueue || getPromise([this])).pipe(                                                        // 652
              function () {                                                                                         // 653
                if (data.errorThrown) {                                                                             // 654
                  return $.Deferred()                                                                               // 655
                    .rejectWith(that, [data]).promise();                                                            // 656
                }                                                                                                   // 657
                return getPromise(arguments);                                                                       // 658
              }                                                                                                     // 659
            ).pipe(resolveFunc, rejectFunc);                                                                        // 660
        }                                                                                                           // 661
        return this._processQueue || getPromise([this]);                                                            // 662
      };                                                                                                            // 663
      data.submit = function () {                                                                                   // 664
        if (this.state() !== 'pending') {                                                                           // 665
          data.jqXHR = this.jqXHR =                                                                                 // 666
            (that._trigger(                                                                                         // 667
              'submit',                                                                                             // 668
              $.Event('submit', {delegatedEvent: e}),                                                               // 669
              this                                                                                                  // 670
            ) !== false) && that._onSend(e, this);                                                                  // 671
        }                                                                                                           // 672
        return this.jqXHR || that._getXHRPromise();                                                                 // 673
      };                                                                                                            // 674
      data.abort = function () {                                                                                    // 675
        if (this.jqXHR) {                                                                                           // 676
          return this.jqXHR.abort();                                                                                // 677
        }                                                                                                           // 678
        this.errorThrown = 'abort';                                                                                 // 679
        that._trigger('fail', null, this);                                                                          // 680
        return that._getXHRPromise(false);                                                                          // 681
      };                                                                                                            // 682
      data.state = function () {                                                                                    // 683
        if (this.jqXHR) {                                                                                           // 684
          return that._getDeferredState(this.jqXHR);                                                                // 685
        }                                                                                                           // 686
        if (this._processQueue) {                                                                                   // 687
          return that._getDeferredState(this._processQueue);                                                        // 688
        }                                                                                                           // 689
      };                                                                                                            // 690
      data.processing = function () {                                                                               // 691
        return !this.jqXHR && this._processQueue && that                                                            // 692
            ._getDeferredState(this._processQueue) === 'pending';                                                   // 693
      };                                                                                                            // 694
      data.progress = function () {                                                                                 // 695
        return this._progress;                                                                                      // 696
      };                                                                                                            // 697
      data.response = function () {                                                                                 // 698
        return this._response;                                                                                      // 699
      };                                                                                                            // 700
    },                                                                                                              // 701
                                                                                                                    // 702
    // Parses the Range header from the server response                                                             // 703
    // and returns the uploaded bytes:                                                                              // 704
    _getUploadedBytes: function (jqXHR) {                                                                           // 705
      var range = jqXHR.getResponseHeader('Range'),                                                                 // 706
        parts = range && range.split('-'),                                                                          // 707
        upperBytesPos = parts && parts.length > 1 &&                                                                // 708
          parseInt(parts[1], 10);                                                                                   // 709
      return upperBytesPos && upperBytesPos + 1;                                                                    // 710
    },                                                                                                              // 711
                                                                                                                    // 712
    // Uploads a file in multiple, sequential requests                                                              // 713
    // by splitting the file up in multiple blob chunks.                                                            // 714
    // If the second parameter is true, only tests if the file                                                      // 715
    // should be uploaded in chunks, but does not invoke any                                                        // 716
    // upload requests:                                                                                             // 717
    _chunkedUpload: function (options, testOnly) {                                                                  // 718
      options.uploadedBytes = options.uploadedBytes || 0;                                                           // 719
      var that = this,                                                                                              // 720
        file = options.files[0],                                                                                    // 721
        fs = file.size,                                                                                             // 722
        ub = options.uploadedBytes,                                                                                 // 723
        mcs = options.maxChunkSize || fs,                                                                           // 724
        slice = this._blobSlice,                                                                                    // 725
        dfd = $.Deferred(),                                                                                         // 726
        promise = dfd.promise(),                                                                                    // 727
        jqXHR,                                                                                                      // 728
        upload;                                                                                                     // 729
      if (!(this._isXHRUpload(options) && slice && (ub || mcs < fs)) ||                                             // 730
        options.data) {                                                                                             // 731
        return false;                                                                                               // 732
      }                                                                                                             // 733
      if (testOnly) {                                                                                               // 734
        return true;                                                                                                // 735
      }                                                                                                             // 736
      if (ub >= fs) {                                                                                               // 737
        file.error = options.i18n('uploadedBytes');                                                                 // 738
        return this._getXHRPromise(                                                                                 // 739
          false,                                                                                                    // 740
          options.context,                                                                                          // 741
          [null, 'error', file.error]                                                                               // 742
        );                                                                                                          // 743
      }                                                                                                             // 744
      // The chunk upload method:                                                                                   // 745
      upload = function () {                                                                                        // 746
        // Clone the options object for each chunk upload:                                                          // 747
        var o = $.extend({}, options),                                                                              // 748
          currentLoaded = o._progress.loaded;                                                                       // 749
        o.blob = slice.call(                                                                                        // 750
          file,                                                                                                     // 751
          ub,                                                                                                       // 752
          ub + mcs,                                                                                                 // 753
          file.type                                                                                                 // 754
        );                                                                                                          // 755
        // Store the current chunk size, as the blob itself                                                         // 756
        // will be dereferenced after data processing:                                                              // 757
        o.chunkSize = o.blob.size;                                                                                  // 758
        // Expose the chunk bytes position range:                                                                   // 759
        o.contentRange = 'bytes ' + ub + '-' +                                                                      // 760
        (ub + o.chunkSize - 1) + '/' + fs;                                                                          // 761
        // Process the upload data (the blob and potential form data):                                              // 762
        that._initXHRData(o);                                                                                       // 763
        // Add progress listeners for this chunk upload:                                                            // 764
        that._initProgressListener(o);                                                                              // 765
        jqXHR = ((that._trigger('chunksend', null, o) !== false && $.ajax(o)) ||                                    // 766
        that._getXHRPromise(false, o.context))                                                                      // 767
          .done(function (result, textStatus, jqXHR) {                                                              // 768
            ub = that._getUploadedBytes(jqXHR) ||                                                                   // 769
            (ub + o.chunkSize);                                                                                     // 770
            // Create a progress event if no final progress event                                                   // 771
            // with loaded equaling total has been triggered                                                        // 772
            // for this chunk:                                                                                      // 773
            if (currentLoaded + o.chunkSize - o._progress.loaded) {                                                 // 774
              that._onProgress($.Event('progress', {                                                                // 775
                lengthComputable: true,                                                                             // 776
                loaded: ub - o.uploadedBytes,                                                                       // 777
                total: ub - o.uploadedBytes                                                                         // 778
              }), o);                                                                                               // 779
            }                                                                                                       // 780
            options.uploadedBytes = o.uploadedBytes = ub;                                                           // 781
            o.result = result;                                                                                      // 782
            o.textStatus = textStatus;                                                                              // 783
            o.jqXHR = jqXHR;                                                                                        // 784
            that._trigger('chunkdone', null, o);                                                                    // 785
            that._trigger('chunkalways', null, o);                                                                  // 786
            if (ub < fs) {                                                                                          // 787
              // File upload not yet complete,                                                                      // 788
              // continue with the next chunk:                                                                      // 789
              upload();                                                                                             // 790
            } else {                                                                                                // 791
              dfd.resolveWith(                                                                                      // 792
                o.context,                                                                                          // 793
                [result, textStatus, jqXHR]                                                                         // 794
              );                                                                                                    // 795
            }                                                                                                       // 796
          })                                                                                                        // 797
          .fail(function (jqXHR, textStatus, errorThrown) {                                                         // 798
            o.jqXHR = jqXHR;                                                                                        // 799
            o.textStatus = textStatus;                                                                              // 800
            o.errorThrown = errorThrown;                                                                            // 801
            that._trigger('chunkfail', null, o);                                                                    // 802
            that._trigger('chunkalways', null, o);                                                                  // 803
            dfd.rejectWith(                                                                                         // 804
              o.context,                                                                                            // 805
              [jqXHR, textStatus, errorThrown]                                                                      // 806
            );                                                                                                      // 807
          });                                                                                                       // 808
      };                                                                                                            // 809
      this._enhancePromise(promise);                                                                                // 810
      promise.abort = function () {                                                                                 // 811
        return jqXHR.abort();                                                                                       // 812
      };                                                                                                            // 813
      upload();                                                                                                     // 814
      return promise;                                                                                               // 815
    },                                                                                                              // 816
                                                                                                                    // 817
    _beforeSend: function (e, data) {                                                                               // 818
      if (this._active === 0) {                                                                                     // 819
        // the start callback is triggered when an upload starts                                                    // 820
        // and no other uploads are currently running,                                                              // 821
        // equivalent to the global ajaxStart event:                                                                // 822
        this._trigger('start');                                                                                     // 823
        // Set timer for global bitrate progress calculation:                                                       // 824
        this._bitrateTimer = new this._BitrateTimer();                                                              // 825
        // Reset the global progress values:                                                                        // 826
        this._progress.loaded = this._progress.total = 0;                                                           // 827
        this._progress.bitrate = 0;                                                                                 // 828
      }                                                                                                             // 829
      // Make sure the container objects for the .response() and                                                    // 830
      // .progress() methods on the data object are available                                                       // 831
      // and reset to their initial state:                                                                          // 832
      this._initResponseObject(data);                                                                               // 833
      this._initProgressObject(data);                                                                               // 834
      data._progress.loaded = data.loaded = data.uploadedBytes || 0;                                                // 835
      data._progress.total = data.total = this._getTotal(data.files) || 1;                                          // 836
      data._progress.bitrate = data.bitrate = 0;                                                                    // 837
      this._active += 1;                                                                                            // 838
      // Initialize the global progress values:                                                                     // 839
      this._progress.loaded += data.loaded;                                                                         // 840
      this._progress.total += data.total;                                                                           // 841
    },                                                                                                              // 842
                                                                                                                    // 843
    _onDone: function (result, textStatus, jqXHR, options) {                                                        // 844
      var total = options._progress.total,                                                                          // 845
        response = options._response;                                                                               // 846
      if (options._progress.loaded < total) {                                                                       // 847
        // Create a progress event if no final progress event                                                       // 848
        // with loaded equaling total has been triggered:                                                           // 849
        this._onProgress($.Event('progress', {                                                                      // 850
          lengthComputable: true,                                                                                   // 851
          loaded: total,                                                                                            // 852
          total: total                                                                                              // 853
        }), options);                                                                                               // 854
      }                                                                                                             // 855
      response.result = options.result = result;                                                                    // 856
      response.textStatus = options.textStatus = textStatus;                                                        // 857
      response.jqXHR = options.jqXHR = jqXHR;                                                                       // 858
      this._trigger('done', null, options);                                                                         // 859
    },                                                                                                              // 860
                                                                                                                    // 861
    _onFail: function (jqXHR, textStatus, errorThrown, options) {                                                   // 862
      var response = options._response;                                                                             // 863
      if (options.recalculateProgress) {                                                                            // 864
        // Remove the failed (error or abort) file upload from                                                      // 865
        // the global progress calculation:                                                                         // 866
        this._progress.loaded -= options._progress.loaded;                                                          // 867
        this._progress.total -= options._progress.total;                                                            // 868
      }                                                                                                             // 869
      response.jqXHR = options.jqXHR = jqXHR;                                                                       // 870
      response.textStatus = options.textStatus = textStatus;                                                        // 871
      response.errorThrown = options.errorThrown = errorThrown;                                                     // 872
      this._trigger('fail', null, options);                                                                         // 873
    },                                                                                                              // 874
                                                                                                                    // 875
    _onAlways: function (jqXHRorResult, textStatus, jqXHRorError, options) {                                        // 876
      // jqXHRorResult, textStatus and jqXHRorError are added to the                                                // 877
      // options object via done and fail callbacks                                                                 // 878
      this._trigger('always', null, options);                                                                       // 879
    },                                                                                                              // 880
                                                                                                                    // 881
    _onSend: function (e, data) {                                                                                   // 882
      if (!data.submit) {                                                                                           // 883
        this._addConvenienceMethods(e, data);                                                                       // 884
      }                                                                                                             // 885
      var that = this,                                                                                              // 886
        jqXHR,                                                                                                      // 887
        aborted,                                                                                                    // 888
        slot,                                                                                                       // 889
        pipe,                                                                                                       // 890
        options = that._getAJAXSettings(data),                                                                      // 891
        send = function () {                                                                                        // 892
          that._sending += 1;                                                                                       // 893
          // Set timer for bitrate progress calculation:                                                            // 894
          options._bitrateTimer = new that._BitrateTimer();                                                         // 895
          jqXHR = jqXHR || (                                                                                        // 896
          ((aborted || that._trigger(                                                                               // 897
            'send',                                                                                                 // 898
            $.Event('send', {delegatedEvent: e}),                                                                   // 899
            options                                                                                                 // 900
          ) === false) &&                                                                                           // 901
          that._getXHRPromise(false, options.context, aborted)) ||                                                  // 902
          that._chunkedUpload(options) || $.ajax(options)                                                           // 903
          ).done(function (result, textStatus, jqXHR) {                                                             // 904
              that._onDone(result, textStatus, jqXHR, options);                                                     // 905
            }).fail(function (jqXHR, textStatus, errorThrown) {                                                     // 906
              that._onFail(jqXHR, textStatus, errorThrown, options);                                                // 907
            }).always(function (jqXHRorResult, textStatus, jqXHRorError) {                                          // 908
              that._onAlways(                                                                                       // 909
                jqXHRorResult,                                                                                      // 910
                textStatus,                                                                                         // 911
                jqXHRorError,                                                                                       // 912
                options                                                                                             // 913
              );                                                                                                    // 914
              that._sending -= 1;                                                                                   // 915
              that._active -= 1;                                                                                    // 916
              if (options.limitConcurrentUploads &&                                                                 // 917
                options.limitConcurrentUploads > that._sending) {                                                   // 918
                // Start the next queued upload,                                                                    // 919
                // that has not been aborted:                                                                       // 920
                var nextSlot = that._slots.shift();                                                                 // 921
                while (nextSlot) {                                                                                  // 922
                  if (that._getDeferredState(nextSlot) === 'pending') {                                             // 923
                    nextSlot.resolve();                                                                             // 924
                    break;                                                                                          // 925
                  }                                                                                                 // 926
                  nextSlot = that._slots.shift();                                                                   // 927
                }                                                                                                   // 928
              }                                                                                                     // 929
              if (that._active === 0) {                                                                             // 930
                // The stop callback is triggered when all uploads have                                             // 931
                // been completed, equivalent to the global ajaxStop event:                                         // 932
                that._trigger('stop');                                                                              // 933
              }                                                                                                     // 934
            });                                                                                                     // 935
          return jqXHR;                                                                                             // 936
        };                                                                                                          // 937
      this._beforeSend(e, options);                                                                                 // 938
      if (this.options.sequentialUploads ||                                                                         // 939
        (this.options.limitConcurrentUploads &&                                                                     // 940
        this.options.limitConcurrentUploads <= this._sending)) {                                                    // 941
        if (this.options.limitConcurrentUploads > 1) {                                                              // 942
          slot = $.Deferred();                                                                                      // 943
          this._slots.push(slot);                                                                                   // 944
          pipe = slot.pipe(send);                                                                                   // 945
        } else {                                                                                                    // 946
          this._sequence = this._sequence.pipe(send, send);                                                         // 947
          pipe = this._sequence;                                                                                    // 948
        }                                                                                                           // 949
        // Return the piped Promise object, enhanced with an abort method,                                          // 950
        // which is delegated to the jqXHR object of the current upload,                                            // 951
        // and jqXHR callbacks mapped to the equivalent Promise methods:                                            // 952
        pipe.abort = function () {                                                                                  // 953
          aborted = [undefined, 'abort', 'abort'];                                                                  // 954
          if (!jqXHR) {                                                                                             // 955
            if (slot) {                                                                                             // 956
              slot.rejectWith(options.context, aborted);                                                            // 957
            }                                                                                                       // 958
            return send();                                                                                          // 959
          }                                                                                                         // 960
          return jqXHR.abort();                                                                                     // 961
        };                                                                                                          // 962
        return this._enhancePromise(pipe);                                                                          // 963
      }                                                                                                             // 964
      return send();                                                                                                // 965
    },                                                                                                              // 966
                                                                                                                    // 967
    _onAdd: function (e, data) {                                                                                    // 968
      var that = this,                                                                                              // 969
        result = true,                                                                                              // 970
        options = $.extend({}, this.options, data),                                                                 // 971
        files = data.files,                                                                                         // 972
        filesLength = files.length,                                                                                 // 973
        limit = options.limitMultiFileUploads,                                                                      // 974
        limitSize = options.limitMultiFileUploadSize,                                                               // 975
        overhead = options.limitMultiFileUploadSizeOverhead,                                                        // 976
        batchSize = 0,                                                                                              // 977
        paramName = this._getParamName(options),                                                                    // 978
        paramNameSet,                                                                                               // 979
        paramNameSlice,                                                                                             // 980
        fileSet,                                                                                                    // 981
        i,                                                                                                          // 982
        j = 0;                                                                                                      // 983
      if (limitSize && (!filesLength || files[0].size === undefined)) {                                             // 984
        limitSize = undefined;                                                                                      // 985
      }                                                                                                             // 986
      if (!(options.singleFileUploads || limit || limitSize) || !this._isXHRUpload(options)) {                      // 987
        fileSet = [files];                                                                                          // 988
        paramNameSet = [paramName];                                                                                 // 989
      } else if (!(options.singleFileUploads || limitSize) && limit) {                                              // 990
        fileSet = [];                                                                                               // 991
        paramNameSet = [];                                                                                          // 992
        for (i = 0; i < filesLength; i += limit) {                                                                  // 993
          fileSet.push(files.slice(i, i + limit));                                                                  // 994
          paramNameSlice = paramName.slice(i, i + limit);                                                           // 995
          if (!paramNameSlice.length) {                                                                             // 996
            paramNameSlice = paramName;                                                                             // 997
          }                                                                                                         // 998
          paramNameSet.push(paramNameSlice);                                                                        // 999
        }                                                                                                           // 1000
      } else if (!options.singleFileUploads && limitSize) {                                                         // 1001
        fileSet = [];                                                                                               // 1002
        paramNameSet = [];                                                                                          // 1003
        for (i = 0; i < filesLength; i = i + 1) {                                                                   // 1004
          batchSize += files[i].size + overhead;                                                                    // 1005
          if (i + 1 === filesLength ||                                                                              // 1006
            ((batchSize + files[i + 1].size + overhead) > limitSize) ||                                             // 1007
            (limit && i + 1 - j >= limit)) {                                                                        // 1008
            fileSet.push(files.slice(j, i + 1));                                                                    // 1009
            paramNameSlice = paramName.slice(j, i + 1);                                                             // 1010
            if (!paramNameSlice.length) {                                                                           // 1011
              paramNameSlice = paramName;                                                                           // 1012
            }                                                                                                       // 1013
            paramNameSet.push(paramNameSlice);                                                                      // 1014
            j = i + 1;                                                                                              // 1015
            batchSize = 0;                                                                                          // 1016
          }                                                                                                         // 1017
        }                                                                                                           // 1018
      } else {                                                                                                      // 1019
        paramNameSet = paramName;                                                                                   // 1020
      }                                                                                                             // 1021
      data.originalFiles = files;                                                                                   // 1022
      $.each(fileSet || files, function (index, element) {                                                          // 1023
        var newData = $.extend({}, data);                                                                           // 1024
        newData.files = fileSet ? element : [element];                                                              // 1025
        newData.paramName = paramNameSet[index];                                                                    // 1026
        that._initResponseObject(newData);                                                                          // 1027
        that._initProgressObject(newData);                                                                          // 1028
        that._addConvenienceMethods(e, newData);                                                                    // 1029
        result = that._trigger(                                                                                     // 1030
          'add',                                                                                                    // 1031
          $.Event('add', {delegatedEvent: e}),                                                                      // 1032
          newData                                                                                                   // 1033
        );                                                                                                          // 1034
        return result;                                                                                              // 1035
      });                                                                                                           // 1036
      return result;                                                                                                // 1037
    },                                                                                                              // 1038
                                                                                                                    // 1039
    _replaceFileInput: function (data) {                                                                            // 1040
      var input = data.fileInput,                                                                                   // 1041
        inputClone = input.clone(true);                                                                             // 1042
      // Add a reference for the new cloned file input to the data argument:                                        // 1043
      data.fileInputClone = inputClone;                                                                             // 1044
      $('<form></form>').append(inputClone)[0].reset();                                                             // 1045
      // Detaching allows to insert the fileInput on another form                                                   // 1046
      // without loosing the file input value:                                                                      // 1047
      input.after(inputClone).detach();                                                                             // 1048
      // Avoid memory leaks with the detached file input:                                                           // 1049
      $.cleanData(input.unbind('remove'));                                                                          // 1050
      // Replace the original file input element in the fileInput                                                   // 1051
      // elements set with the clone, which has been copied including                                               // 1052
      // event handlers:                                                                                            // 1053
      this.options.fileInput = this.options.fileInput.map(function (i, el) {                                        // 1054
        if (el === input[0]) {                                                                                      // 1055
          return inputClone[0];                                                                                     // 1056
        }                                                                                                           // 1057
        return el;                                                                                                  // 1058
      });                                                                                                           // 1059
      // If the widget has been initialized on the file input itself,                                               // 1060
      // override this.element with the file input clone:                                                           // 1061
      if (input[0] === this.element[0]) {                                                                           // 1062
        this.element = inputClone;                                                                                  // 1063
      }                                                                                                             // 1064
    },                                                                                                              // 1065
                                                                                                                    // 1066
    _handleFileTreeEntry: function (entry, path) {                                                                  // 1067
      var that = this,                                                                                              // 1068
        dfd = $.Deferred(),                                                                                         // 1069
        errorHandler = function (e) {                                                                               // 1070
          if (e && !e.entry) {                                                                                      // 1071
            e.entry = entry;                                                                                        // 1072
          }                                                                                                         // 1073
          // Since $.when returns immediately if one                                                                // 1074
          // Deferred is rejected, we use resolve instead.                                                          // 1075
          // This allows valid files and invalid items                                                              // 1076
          // to be returned together in one set:                                                                    // 1077
          dfd.resolve([e]);                                                                                         // 1078
        },                                                                                                          // 1079
        successHandler = function (entries) {                                                                       // 1080
          that._handleFileTreeEntries(                                                                              // 1081
            entries,                                                                                                // 1082
            path + entry.name + '/'                                                                                 // 1083
          ).done(function (files) {                                                                                 // 1084
              dfd.resolve(files);                                                                                   // 1085
            }).fail(errorHandler);                                                                                  // 1086
        },                                                                                                          // 1087
        readEntries = function () {                                                                                 // 1088
          dirReader.readEntries(function (results) {                                                                // 1089
            if (!results.length) {                                                                                  // 1090
              successHandler(entries);                                                                              // 1091
            } else {                                                                                                // 1092
              entries = entries.concat(results);                                                                    // 1093
              readEntries();                                                                                        // 1094
            }                                                                                                       // 1095
          }, errorHandler);                                                                                         // 1096
        },                                                                                                          // 1097
        dirReader, entries = [];                                                                                    // 1098
      path = path || '';                                                                                            // 1099
      if (entry.isFile) {                                                                                           // 1100
        if (entry._file) {                                                                                          // 1101
          // Workaround for Chrome bug #149735                                                                      // 1102
          entry._file.relativePath = path;                                                                          // 1103
          dfd.resolve(entry._file);                                                                                 // 1104
        } else {                                                                                                    // 1105
          entry.file(function (file) {                                                                              // 1106
            file.relativePath = path;                                                                               // 1107
            dfd.resolve(file);                                                                                      // 1108
          }, errorHandler);                                                                                         // 1109
        }                                                                                                           // 1110
      } else if (entry.isDirectory) {                                                                               // 1111
        dirReader = entry.createReader();                                                                           // 1112
        readEntries();                                                                                              // 1113
      } else {                                                                                                      // 1114
        // Return an empy list for file system items                                                                // 1115
        // other than files or directories:                                                                         // 1116
        dfd.resolve([]);                                                                                            // 1117
      }                                                                                                             // 1118
      return dfd.promise();                                                                                         // 1119
    },                                                                                                              // 1120
                                                                                                                    // 1121
    _handleFileTreeEntries: function (entries, path) {                                                              // 1122
      var that = this;                                                                                              // 1123
      return $.when.apply(                                                                                          // 1124
        $,                                                                                                          // 1125
        $.map(entries, function (entry) {                                                                           // 1126
          return that._handleFileTreeEntry(entry, path);                                                            // 1127
        })                                                                                                          // 1128
      ).pipe(function () {                                                                                          // 1129
          return Array.prototype.concat.apply(                                                                      // 1130
            [],                                                                                                     // 1131
            arguments                                                                                               // 1132
          );                                                                                                        // 1133
        });                                                                                                         // 1134
    },                                                                                                              // 1135
                                                                                                                    // 1136
    _getDroppedFiles: function (dataTransfer) {                                                                     // 1137
      dataTransfer = dataTransfer || {};                                                                            // 1138
      var items = dataTransfer.items;                                                                               // 1139
      if (items && items.length && (items[0].webkitGetAsEntry ||                                                    // 1140
        items[0].getAsEntry)) {                                                                                     // 1141
        return this._handleFileTreeEntries(                                                                         // 1142
          $.map(items, function (item) {                                                                            // 1143
            var entry;                                                                                              // 1144
            if (item.webkitGetAsEntry) {                                                                            // 1145
              entry = item.webkitGetAsEntry();                                                                      // 1146
              if (entry) {                                                                                          // 1147
                // Workaround for Chrome bug #149735:                                                               // 1148
                entry._file = item.getAsFile();                                                                     // 1149
              }                                                                                                     // 1150
              return entry;                                                                                         // 1151
            }                                                                                                       // 1152
            return item.getAsEntry();                                                                               // 1153
          })                                                                                                        // 1154
        );                                                                                                          // 1155
      }                                                                                                             // 1156
      return $.Deferred().resolve(                                                                                  // 1157
        $.makeArray(dataTransfer.files)                                                                             // 1158
      ).promise();                                                                                                  // 1159
    },                                                                                                              // 1160
                                                                                                                    // 1161
    _getSingleFileInputFiles: function (fileInput) {                                                                // 1162
      fileInput = $(fileInput);                                                                                     // 1163
      var entries = fileInput.prop('webkitEntries') ||                                                              // 1164
          fileInput.prop('entries'),                                                                                // 1165
        files,                                                                                                      // 1166
        value;                                                                                                      // 1167
      if (entries && entries.length) {                                                                              // 1168
        return this._handleFileTreeEntries(entries);                                                                // 1169
      }                                                                                                             // 1170
      files = $.makeArray(fileInput.prop('files'));                                                                 // 1171
      if (!files.length) {                                                                                          // 1172
        value = fileInput.prop('value');                                                                            // 1173
        if (!value) {                                                                                               // 1174
          return $.Deferred().resolve([]).promise();                                                                // 1175
        }                                                                                                           // 1176
        // If the files property is not available, the browser does not                                             // 1177
        // support the File API and we add a pseudo File object with                                                // 1178
        // the input value as name with path information removed:                                                   // 1179
        files = [{name: value.replace(/^.*\\/, '')}];                                                               // 1180
      } else if (files[0].name === undefined && files[0].fileName) {                                                // 1181
        // File normalization for Safari 4 and Firefox 3:                                                           // 1182
        $.each(files, function (index, file) {                                                                      // 1183
          file.name = file.fileName;                                                                                // 1184
          file.size = file.fileSize;                                                                                // 1185
        });                                                                                                         // 1186
      }                                                                                                             // 1187
      return $.Deferred().resolve(files).promise();                                                                 // 1188
    },                                                                                                              // 1189
                                                                                                                    // 1190
    _getFileInputFiles: function (fileInput) {                                                                      // 1191
      if (!(fileInput instanceof $) || fileInput.length === 1) {                                                    // 1192
        return this._getSingleFileInputFiles(fileInput);                                                            // 1193
      }                                                                                                             // 1194
      return $.when.apply(                                                                                          // 1195
        $,                                                                                                          // 1196
        $.map(fileInput, this._getSingleFileInputFiles)                                                             // 1197
      ).pipe(function () {                                                                                          // 1198
          return Array.prototype.concat.apply(                                                                      // 1199
            [],                                                                                                     // 1200
            arguments                                                                                               // 1201
          );                                                                                                        // 1202
        });                                                                                                         // 1203
    },                                                                                                              // 1204
                                                                                                                    // 1205
    _onChange: function (e) {                                                                                       // 1206
      var that = this,                                                                                              // 1207
        data = {                                                                                                    // 1208
          fileInput: $(e.target),                                                                                   // 1209
          form: $(e.target.form)                                                                                    // 1210
        };                                                                                                          // 1211
      this._getFileInputFiles(data.fileInput).always(function (files) {                                             // 1212
        data.files = files;                                                                                         // 1213
        if (that.options.replaceFileInput) {                                                                        // 1214
          that._replaceFileInput(data);                                                                             // 1215
        }                                                                                                           // 1216
        if (that._trigger(                                                                                          // 1217
            'change',                                                                                               // 1218
            $.Event('change', {delegatedEvent: e}),                                                                 // 1219
            data                                                                                                    // 1220
          ) !== false) {                                                                                            // 1221
          that._onAdd(e, data);                                                                                     // 1222
        }                                                                                                           // 1223
      });                                                                                                           // 1224
    },                                                                                                              // 1225
                                                                                                                    // 1226
    _onPaste: function (e) {                                                                                        // 1227
      var items = e.originalEvent && e.originalEvent.clipboardData &&                                               // 1228
          e.originalEvent.clipboardData.items,                                                                      // 1229
        data = {files: []};                                                                                         // 1230
      if (items && items.length) {                                                                                  // 1231
        $.each(items, function (index, item) {                                                                      // 1232
          var file = item.getAsFile && item.getAsFile();                                                            // 1233
          if (file) {                                                                                               // 1234
            data.files.push(file);                                                                                  // 1235
          }                                                                                                         // 1236
        });                                                                                                         // 1237
        if (this._trigger(                                                                                          // 1238
            'paste',                                                                                                // 1239
            $.Event('paste', {delegatedEvent: e}),                                                                  // 1240
            data                                                                                                    // 1241
          ) !== false) {                                                                                            // 1242
          this._onAdd(e, data);                                                                                     // 1243
        }                                                                                                           // 1244
      }                                                                                                             // 1245
    },                                                                                                              // 1246
                                                                                                                    // 1247
    _onDrop: function (e) {                                                                                         // 1248
      e.dataTransfer = e.originalEvent && e.originalEvent.dataTransfer;                                             // 1249
      var that = this,                                                                                              // 1250
        dataTransfer = e.dataTransfer,                                                                              // 1251
        data = {};                                                                                                  // 1252
      if (dataTransfer && dataTransfer.files && dataTransfer.files.length) {                                        // 1253
        e.preventDefault();                                                                                         // 1254
        this._getDroppedFiles(dataTransfer).always(function (files) {                                               // 1255
          data.files = files;                                                                                       // 1256
          if (that._trigger(                                                                                        // 1257
              'drop',                                                                                               // 1258
              $.Event('drop', {delegatedEvent: e}),                                                                 // 1259
              data                                                                                                  // 1260
            ) !== false) {                                                                                          // 1261
            that._onAdd(e, data);                                                                                   // 1262
          }                                                                                                         // 1263
        });                                                                                                         // 1264
      }                                                                                                             // 1265
    },                                                                                                              // 1266
                                                                                                                    // 1267
    _onDragOver: getDragHandler('dragover'),                                                                        // 1268
                                                                                                                    // 1269
    _onDragEnter: getDragHandler('dragenter'),                                                                      // 1270
                                                                                                                    // 1271
    _onDragLeave: getDragHandler('dragleave'),                                                                      // 1272
                                                                                                                    // 1273
    _initEventHandlers: function () {                                                                               // 1274
      if (this._isXHRUpload(this.options)) {                                                                        // 1275
        this._on(this.options.dropZone, {                                                                           // 1276
          dragover: this._onDragOver,                                                                               // 1277
          drop: this._onDrop,                                                                                       // 1278
          // event.preventDefault() on dragenter is required for IE10+:                                             // 1279
          dragenter: this._onDragEnter,                                                                             // 1280
          // dragleave is not required, but added for completeness:                                                 // 1281
          dragleave: this._onDragLeave                                                                              // 1282
        });                                                                                                         // 1283
        this._on(this.options.pasteZone, {                                                                          // 1284
          paste: this._onPaste                                                                                      // 1285
        });                                                                                                         // 1286
      }                                                                                                             // 1287
      if ($.support.fileInput) {                                                                                    // 1288
        this._on(this.options.fileInput, {                                                                          // 1289
          change: this._onChange                                                                                    // 1290
        });                                                                                                         // 1291
      }                                                                                                             // 1292
    },                                                                                                              // 1293
                                                                                                                    // 1294
    _destroyEventHandlers: function () {                                                                            // 1295
      this._off(this.options.dropZone, 'dragenter dragleave dragover drop');                                        // 1296
      this._off(this.options.pasteZone, 'paste');                                                                   // 1297
      this._off(this.options.fileInput, 'change');                                                                  // 1298
    },                                                                                                              // 1299
                                                                                                                    // 1300
    _setOption: function (key, value) {                                                                             // 1301
      var reinit = $.inArray(key, this._specialOptions) !== -1;                                                     // 1302
      if (reinit) {                                                                                                 // 1303
        this._destroyEventHandlers();                                                                               // 1304
      }                                                                                                             // 1305
      this._super(key, value);                                                                                      // 1306
      if (reinit) {                                                                                                 // 1307
        this._initSpecialOptions();                                                                                 // 1308
        this._initEventHandlers();                                                                                  // 1309
      }                                                                                                             // 1310
    },                                                                                                              // 1311
                                                                                                                    // 1312
    _initSpecialOptions: function () {                                                                              // 1313
      var options = this.options;                                                                                   // 1314
      if (options.fileInput === undefined) {                                                                        // 1315
        options.fileInput = this.element.is('input[type="file"]') ?                                                 // 1316
          this.element : this.element.find('input[type="file"]');                                                   // 1317
      } else if (!(options.fileInput instanceof $)) {                                                               // 1318
        options.fileInput = $(options.fileInput);                                                                   // 1319
      }                                                                                                             // 1320
      if (!(options.dropZone instanceof $)) {                                                                       // 1321
        options.dropZone = $(options.dropZone);                                                                     // 1322
      }                                                                                                             // 1323
      if (!(options.pasteZone instanceof $)) {                                                                      // 1324
        options.pasteZone = $(options.pasteZone);                                                                   // 1325
      }                                                                                                             // 1326
    },                                                                                                              // 1327
                                                                                                                    // 1328
    _getRegExp: function (str) {                                                                                    // 1329
      var parts = str.split('/'),                                                                                   // 1330
        modifiers = parts.pop();                                                                                    // 1331
      parts.shift();                                                                                                // 1332
      return new RegExp(parts.join('/'), modifiers);                                                                // 1333
    },                                                                                                              // 1334
                                                                                                                    // 1335
    _isRegExpOption: function (key, value) {                                                                        // 1336
      return key !== 'url' && $.type(value) === 'string' &&                                                         // 1337
        /^\/.*\/[igm]{0,3}$/.test(value);                                                                           // 1338
    },                                                                                                              // 1339
                                                                                                                    // 1340
    _initDataAttributes: function () {                                                                              // 1341
      var that = this,                                                                                              // 1342
        options = this.options,                                                                                     // 1343
        clone = $(this.element[0].cloneNode(false));                                                                // 1344
      // Initialize options set via HTML5 data-attributes:                                                          // 1345
      $.each(                                                                                                       // 1346
        clone.data(),                                                                                               // 1347
        function (key, value) {                                                                                     // 1348
          var dataAttributeName = 'data-' +                                                                         // 1349
              // Convert camelCase to hyphen-ated key:                                                              // 1350
            key.replace(/([a-z])([A-Z])/g, '$1-$2').toLowerCase();                                                  // 1351
          if (clone.attr(dataAttributeName)) {                                                                      // 1352
            if (that._isRegExpOption(key, value)) {                                                                 // 1353
              value = that._getRegExp(value);                                                                       // 1354
            }                                                                                                       // 1355
            options[key] = value;                                                                                   // 1356
          }                                                                                                         // 1357
        }                                                                                                           // 1358
      );                                                                                                            // 1359
    },                                                                                                              // 1360
                                                                                                                    // 1361
    _create: function () {                                                                                          // 1362
      this._initDataAttributes();                                                                                   // 1363
      this._initSpecialOptions();                                                                                   // 1364
      this._slots = [];                                                                                             // 1365
      this._sequence = this._getXHRPromise(true);                                                                   // 1366
      this._sending = this._active = 0;                                                                             // 1367
      this._initProgressObject(this);                                                                               // 1368
      this._initEventHandlers();                                                                                    // 1369
    },                                                                                                              // 1370
                                                                                                                    // 1371
    // This method is exposed to the widget API and allows to query                                                 // 1372
    // the number of active uploads:                                                                                // 1373
    active: function () {                                                                                           // 1374
      return this._active;                                                                                          // 1375
    },                                                                                                              // 1376
                                                                                                                    // 1377
    // This method is exposed to the widget API and allows to query                                                 // 1378
    // the widget upload progress.                                                                                  // 1379
    // It returns an object with loaded, total and bitrate properties                                               // 1380
    // for the running uploads:                                                                                     // 1381
    progress: function () {                                                                                         // 1382
      return this._progress;                                                                                        // 1383
    },                                                                                                              // 1384
                                                                                                                    // 1385
    // This method is exposed to the widget API and allows adding files                                             // 1386
    // using the fileupload API. The data parameter accepts an object which                                         // 1387
    // must have a files property and can contain additional options:                                               // 1388
    // .fileupload('add', {files: filesList});                                                                      // 1389
    add: function (data) {                                                                                          // 1390
      var that = this;                                                                                              // 1391
      if (!data || this.options.disabled) {                                                                         // 1392
        return;                                                                                                     // 1393
      }                                                                                                             // 1394
      if (data.fileInput && !data.files) {                                                                          // 1395
        this._getFileInputFiles(data.fileInput).always(function (files) {                                           // 1396
          data.files = files;                                                                                       // 1397
          that._onAdd(null, data);                                                                                  // 1398
        });                                                                                                         // 1399
      } else {                                                                                                      // 1400
        data.files = $.makeArray(data.files);                                                                       // 1401
        this._onAdd(null, data);                                                                                    // 1402
      }                                                                                                             // 1403
    },                                                                                                              // 1404
                                                                                                                    // 1405
    // This method is exposed to the widget API and allows sending files                                            // 1406
    // using the fileupload API. The data parameter accepts an object which                                         // 1407
    // must have a files or fileInput property and can contain additional options:                                  // 1408
    // .fileupload('send', {files: filesList});                                                                     // 1409
    // The method returns a Promise object for the file upload call.                                                // 1410
    send: function (data) {                                                                                         // 1411
      if (data && !this.options.disabled) {                                                                         // 1412
        if (data.fileInput && !data.files) {                                                                        // 1413
          var that = this,                                                                                          // 1414
            dfd = $.Deferred(),                                                                                     // 1415
            promise = dfd.promise(),                                                                                // 1416
            jqXHR,                                                                                                  // 1417
            aborted;                                                                                                // 1418
          promise.abort = function () {                                                                             // 1419
            aborted = true;                                                                                         // 1420
            if (jqXHR) {                                                                                            // 1421
              return jqXHR.abort();                                                                                 // 1422
            }                                                                                                       // 1423
            dfd.reject(null, 'abort', 'abort');                                                                     // 1424
            return promise;                                                                                         // 1425
          };                                                                                                        // 1426
          this._getFileInputFiles(data.fileInput).always(                                                           // 1427
            function (files) {                                                                                      // 1428
              if (aborted) {                                                                                        // 1429
                return;                                                                                             // 1430
              }                                                                                                     // 1431
              if (!files.length) {                                                                                  // 1432
                dfd.reject();                                                                                       // 1433
                return;                                                                                             // 1434
              }                                                                                                     // 1435
              data.files = files;                                                                                   // 1436
              jqXHR = that._onSend(null, data);                                                                     // 1437
              jqXHR.then(                                                                                           // 1438
                function (result, textStatus, jqXHR) {                                                              // 1439
                  dfd.resolve(result, textStatus, jqXHR);                                                           // 1440
                },                                                                                                  // 1441
                function (jqXHR, textStatus, errorThrown) {                                                         // 1442
                  dfd.reject(jqXHR, textStatus, errorThrown);                                                       // 1443
                }                                                                                                   // 1444
              );                                                                                                    // 1445
            }                                                                                                       // 1446
          );                                                                                                        // 1447
          return this._enhancePromise(promise);                                                                     // 1448
        }                                                                                                           // 1449
        data.files = $.makeArray(data.files);                                                                       // 1450
        if (data.files.length) {                                                                                    // 1451
          return this._onSend(null, data);                                                                          // 1452
        }                                                                                                           // 1453
      }                                                                                                             // 1454
      return this._getXHRPromise(false, data && data.context);                                                      // 1455
    }                                                                                                               // 1456
                                                                                                                    // 1457
  });                                                                                                               // 1458
                                                                                                                    // 1459
}));                                                                                                                // 1460
                                                                                                                    // 1461
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}).call(this);






(function () {

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                  //
// packages/tomi:upload-jquery/template.upload_semantic_ui.js                                                       //
//                                                                                                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                                                                                                    //
                                                                                                                    // 1
Template.__checkName("upload_semantic_ui");                                                                         // 2
Template["upload_semantic_ui"] = new Template("Template.upload_semantic_ui", (function() {                          // 3
  var view = this;                                                                                                  // 4
  return HTML.FORM({                                                                                                // 5
    method: "POST",                                                                                                 // 6
    enctype: "multipart/form-data"                                                                                  // 7
  }, "\n        ", HTML.DIV({                                                                                       // 8
    "class": "field uploadFilePicker"                                                                               // 9
  }, "\n            ", HTML.DIV({                                                                                   // 10
    "class": "ui action input"                                                                                      // 11
  }, "\n                ", HTML.Raw('<input type="text" id="_attachmentName" disabled="true">'), "\n                ", HTML.LABEL({
    "class": "ui icon button btn-file"                                                                              // 13
  }, "\n                    ", HTML.Raw('<i class="attachment basic icon"></i>'), "\n                    ", HTML.INPUT({
    type: "file",                                                                                                   // 15
    "class": "jqUploadclass",                                                                                       // 16
    name: "attachmentName",                                                                                         // 17
    style: "display: none",                                                                                         // 18
    "data-content-category": function() {                                                                           // 19
      return Spacebars.mustache(view.lookup("contentType"));                                                        // 20
    },                                                                                                              // 21
    accept: function() {                                                                                            // 22
      return Spacebars.mustache(view.lookup("fileTypes"));                                                          // 23
    }                                                                                                               // 24
  }), "\n                "), "\n            "), "\n        "), HTML.Raw('\n        <div class="ui grid field uploadProgressHolder" style="display: none">\n            <div class="column fourteen wide">\n                <div class="ui striped progress" style="position: relative">\n                    <div style="position: absolute; left: 35%" class="uploadProgressLabel"></div>\n                    <div class="bar uploadProgressBar"></div>\n                </div>\n            </div>\n            <div class="column one wide fluid">\n                <button class="ui icon red small button cancelUpload" id="cancelUpload">\n                    <i class="stop icon"></i>\n                </button>\n            </div>\n        </div>\n    '));
}));                                                                                                                // 26
                                                                                                                    // 27
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}).call(this);






(function () {

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                  //
// packages/tomi:upload-jquery/upload_semantic_ui.js                                                                //
//                                                                                                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                                                                                                    //
Template['upload_semantic_ui'].events({                                                                             // 1
  'click .cancelUpload': function (e) {                                                                             // 2
    Uploader.cancelUpload(e);                                                                                       // 3
  }                                                                                                                 // 4
});                                                                                                                 // 5
                                                                                                                    // 6
Template['upload_semantic_ui'].rendered = function () {                                                             // 7
  Uploader.render.call(this);                                                                                       // 8
};                                                                                                                  // 9
                                                                                                                    // 10
                                                                                                                    // 11
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}).call(this);






(function () {

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                  //
// packages/tomi:upload-jquery/bootstrap/template.bootstrap_buttons.js                                              //
//                                                                                                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                                                                                                    //
                                                                                                                    // 1
Template.__checkName("bootstrap_buttons");                                                                          // 2
Template["bootstrap_buttons"] = new Template("Template.bootstrap_buttons", (function() {                            // 3
  var view = this;                                                                                                  // 4
  return Blaze.If(function() {                                                                                      // 5
    return Spacebars.call(view.lookup("idle"));                                                                     // 6
  }, function() {                                                                                                   // 7
    return [ "\n        ", Blaze.If(function() {                                                                    // 8
      return Spacebars.call(view.lookup("cancelled"));                                                              // 9
    }, function() {                                                                                                 // 10
      return [ "\n            ", HTML.DIV({                                                                         // 11
        "class": "btn btn-warning upload-control"                                                                   // 12
      }, "\n                ", HTML.I({                                                                             // 13
        "class": "glyphicon glyphicon-cross"                                                                        // 14
      }), "\n                ", HTML.SPAN("Cancelled"), "\n            "), "\n        " ];                          // 15
    }, function() {                                                                                                 // 16
      return [ "\n            ", Blaze.If(function() {                                                              // 17
        return Spacebars.call(view.lookup("waiting"));                                                              // 18
      }, function() {                                                                                               // 19
        return [ "\n                ", Blaze.If(function() {                                                        // 20
          return Spacebars.call(view.lookup("removeFromQueue"));                                                    // 21
        }, function() {                                                                                             // 22
          return [ "\n                    ", HTML.DIV({                                                             // 23
            type: "submit",                                                                                         // 24
            "class": "btn btn-default upload-control remove"                                                        // 25
          }, "\n                        ", HTML.I({                                                                 // 26
            "class": "glyphicon glyphicon-remove"                                                                   // 27
          }), "\n                        ", HTML.SPAN("Remove"), "\n                    "), "\n                " ]; // 28
        }, function() {                                                                                             // 29
          return [ "\n                    ", HTML.DIV({                                                             // 30
            type: "submit",                                                                                         // 31
            "class": "btn btn-info upload-control start"                                                            // 32
          }, "\n                        ", HTML.I({                                                                 // 33
            "class": "glyphicon glyphicon-upload"                                                                   // 34
          }), "\n                        ", HTML.SPAN("Upload"), "\n                    "), "\n                " ]; // 35
        }), "\n            " ];                                                                                     // 36
      }, function() {                                                                                               // 37
        return [ "\n                ", HTML.DIV({                                                                   // 38
          "class": "btn btn-default upload-control"                                                                 // 39
        }, "\n                    ", HTML.I({                                                                       // 40
          "class": "glyphicon glyphicon-ok"                                                                         // 41
        }), "\n                "), "\n            " ];                                                              // 42
      }), "\n        " ];                                                                                           // 43
    }), "\n    " ];                                                                                                 // 44
  }, function() {                                                                                                   // 45
    return [ "\n        ", HTML.DIV({                                                                               // 46
      "class": "btn btn-danger upload-control cancel"                                                               // 47
    }, "\n            ", HTML.I({                                                                                   // 48
      "class": "glyphicon glyphicon-stop"                                                                           // 49
    }), "\n            ", HTML.SPAN("Cancel"), "\n        "), "\n    " ];                                           // 50
  });                                                                                                               // 51
}));                                                                                                                // 52
                                                                                                                    // 53
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}).call(this);






(function () {

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                  //
// packages/tomi:upload-jquery/bootstrap/bootstrap_buttons.js                                                       //
//                                                                                                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                                                                                                    //
Template['bootstrap_buttons'].helpers({                                                                             // 1
  'idle': function() {                                                                                              // 2
    return this.state.idle();                                                                                       // 3
  },                                                                                                                // 4
  'cancelled': function() {                                                                                         // 5
    return this.state.cancelled();                                                                                  // 6
  },                                                                                                                // 7
  'waiting': function() {                                                                                           // 8
    return this.state.waiting();                                                                                    // 9
  },                                                                                                                // 10
  'removeFromQueue': function() {                                                                                   // 11
    return this.state.removeFromQueue();                                                                            // 12
  }                                                                                                                 // 13
});                                                                                                                 // 14
                                                                                                                    // 15
Template['bootstrap_buttons'].events({                                                                              // 16
  'click .cancel': function (e) {                                                                                   // 17
    Uploader.cancelUpload.call(this.uploadContext, e, this.name);                                                   // 18
  },                                                                                                                // 19
  'click .start': function (e) {                                                                                    // 20
    Uploader.startUpload.call(this.uploadContext, e, this.name);                                                    // 21
  },                                                                                                                // 22
  'click .remove': function (e) {                                                                                   // 23
    Uploader.removeFromQueue.call(this.uploadContext, e, this.name);                                                // 24
  }                                                                                                                 // 25
});                                                                                                                 // 26
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}).call(this);






(function () {

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                  //
// packages/tomi:upload-jquery/bootstrap/template.bootstrap_queue_item.js                                           //
//                                                                                                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                                                                                                    //
                                                                                                                    // 1
Template.__checkName("bootstrap_queue_item");                                                                       // 2
Template["bootstrap_queue_item"] = new Template("Template.bootstrap_queue_item", (function() {                      // 3
  var view = this;                                                                                                  // 4
  return HTML.DIV({                                                                                                 // 5
    "class": "uploadPanel",                                                                                         // 6
    style: "margin-top: 6px"                                                                                        // 7
  }, "\n        ", HTML.DIV({                                                                                       // 8
    "class": "form-control upload-control"                                                                          // 9
  }, "\n            ", HTML.DIV({                                                                                   // 10
    "class": "progress-bar progress-bar-success progress-bar-striped",                                              // 11
    role: "progressbar",                                                                                            // 12
    "aria-valuemin": "0",                                                                                           // 13
    "aria-valuemax": "100",                                                                                         // 14
    style: function() {                                                                                             // 15
      return Spacebars.mustache(view.lookup("progress"));                                                           // 16
    }                                                                                                               // 17
  }, "\n                ", HTML.Raw("&nbsp;"), "\n            "), "\n            ", HTML.DIV({                      // 18
    "class": "progress-label"                                                                                       // 19
  }, "\n                ", Blaze.View(function() {                                                                  // 20
    return Spacebars.makeRaw(Spacebars.mustache(view.lookup("infoLabel")));                                         // 21
  }), "\n            "), "\n        "), "\n\n        ", Blaze._TemplateWith(function() {                            // 22
    return {                                                                                                        // 23
      state: Spacebars.call(view.lookup("buttonState")),                                                            // 24
      uploadContext: Spacebars.call(view.lookup("...")),                                                            // 25
      name: Spacebars.call(Spacebars.dot(view.lookup("."), "item", "name"))                                         // 26
    };                                                                                                              // 27
  }, function() {                                                                                                   // 28
    return Spacebars.include(view.lookupTemplate("bootstrap_buttons"));                                             // 29
  }), "\n    ");                                                                                                    // 30
}));                                                                                                                // 31
                                                                                                                    // 32
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}).call(this);






(function () {

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                  //
// packages/tomi:upload-jquery/bootstrap/bootstrap_queue_item.js                                                    //
//                                                                                                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                                                                                                    //
Template['bootstrap_queue_item'].helpers({                                                                          // 1
  'infoLabel': function() {                                                                                         // 2
    var progress = this.parent.queue[this.item.name].get();                                                         // 3
    return progress.running ?                                                                                       // 4
      Uploader.formatProgress(this.item.name, progress.progress, progress.bitrate) :                                // 5
      (this.item.name + '&nbsp;<span style="font-size: smaller; color: grey">' + bytesToSize(this.item.size) + '</span>');
  },                                                                                                                // 7
  buttonState: function() {                                                                                         // 8
    var that = this;                                                                                                // 9
    return {                                                                                                        // 10
      'idle': function () {                                                                                         // 11
        return !that.parent.queue[that.item.name].get().running ||                                                  // 12
          that.parent.queue[that.item.name].get().progress === 100;                                                 // 13
      },                                                                                                            // 14
      'cancelled': function () {                                                                                    // 15
        return that.parent.queue[that.item.name].get().cancelled;                                                   // 16
      },                                                                                                            // 17
      'waiting': function () {                                                                                      // 18
        return that.parent.queue[that.item.name].get().progress !== 100;                                            // 19
      },                                                                                                            // 20
      'removeFromQueue': function() {                                                                               // 21
        return true;                                                                                                // 22
      }                                                                                                             // 23
    }                                                                                                               // 24
  },                                                                                                                // 25
  'progress': function() {                                                                                          // 26
    return 'width:' + this.parent.queue[this.item.name].get().progress + '%';                                       // 27
  }                                                                                                                 // 28
});                                                                                                                 // 29
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}).call(this);






(function () {

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                  //
// packages/tomi:upload-jquery/bootstrap/template.upload_bootstrap.js                                               //
//                                                                                                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                                                                                                    //
                                                                                                                    // 1
Template.__checkName("upload_bootstrap");                                                                           // 2
Template["upload_bootstrap"] = new Template("Template.upload_bootstrap", (function() {                              // 3
  var view = this;                                                                                                  // 4
  return HTML.FORM({                                                                                                // 5
    method: "POST",                                                                                                 // 6
    enctype: "multipart/form-data"                                                                                  // 7
  }, "\n\n        ", HTML.DIV({                                                                                     // 8
    "class": "uploadPanel"                                                                                          // 9
  }, "\n            ", HTML.Raw("<!-- The fileinput-button span is used to style the file input field as button -->"), "\n\n            ", HTML.DIV({
    "class": "btn btn-primary btn-file upload-control"                                                              // 11
  }, "\n                Browse", HTML.Raw("&hellip;"), " ", HTML.INPUT({                                            // 12
    type: "file",                                                                                                   // 13
    "class": "jqUploadclass",                                                                                       // 14
    multiple: function() {                                                                                          // 15
      return Spacebars.mustache(view.lookup("multiple"));                                                           // 16
    },                                                                                                              // 17
    "data-content-category": function() {                                                                           // 18
      return Spacebars.mustache(view.lookup("contentType"));                                                        // 19
    },                                                                                                              // 20
    "data-form-data": function() {                                                                                  // 21
      return Spacebars.mustache(view.lookup("submitData"));                                                         // 22
    },                                                                                                              // 23
    accept: function() {                                                                                            // 24
      return Spacebars.mustache(view.lookup("fileTypes"));                                                          // 25
    }                                                                                                               // 26
  }), "\n            "), "\n\n            ", HTML.DIV({                                                             // 27
    type: "text",                                                                                                   // 28
    "class": "form-control upload-control"                                                                          // 29
  }, "\n                ", HTML.DIV({                                                                               // 30
    "class": "progress-bar progress-bar-success progress-bar-striped",                                              // 31
    role: "progressbar",                                                                                            // 32
    "aria-valuemin": "0",                                                                                           // 33
    "aria-valuemax": "100",                                                                                         // 34
    style: function() {                                                                                             // 35
      return Spacebars.mustache(view.lookup("progress"));                                                           // 36
    }                                                                                                               // 37
  }, "\n                    ", HTML.Raw("&nbsp;"), "\n                "), "\n                ", HTML.DIV({          // 38
    "class": "progress-label"                                                                                       // 39
  }, "\n                    ", Blaze.View(function() {                                                              // 40
    return Spacebars.makeRaw(Spacebars.mustache(view.lookup("infoLabel")));                                         // 41
  }), "\n                "), "\n            "), "\n\n            ", Blaze._TemplateWith(function() {                // 42
    return {                                                                                                        // 43
      state: Spacebars.call(view.lookup("buttonState")),                                                            // 44
      uploadContext: Spacebars.call(view.lookup("."))                                                               // 45
    };                                                                                                              // 46
  }, function() {                                                                                                   // 47
    return Spacebars.include(view.lookupTemplate("bootstrap_buttons"));                                             // 48
  }), "\n        "), "\n\n        ", Blaze.If(function() {                                                          // 49
    return Spacebars.call(view.lookup("showQueue"));                                                                // 50
  }, function() {                                                                                                   // 51
    return [ "\n        ", HTML.DIV({                                                                               // 52
      "class": "panel panel-default",                                                                               // 53
      style: "margin-top: 1px; background: #efefef"                                                                 // 54
    }, "\n            ", HTML.DIV({                                                                                 // 55
      "class": "panel-body"                                                                                         // 56
    }, "\n                ", Blaze.Each(function() {                                                                // 57
      return Spacebars.call(view.lookup("queueItems"));                                                             // 58
    }, function() {                                                                                                 // 59
      return [ "\n                ", Blaze._TemplateWith(function() {                                               // 60
        return {                                                                                                    // 61
          item: Spacebars.call(view.lookup(".")),                                                                   // 62
          parent: Spacebars.call(view.lookup(".."))                                                                 // 63
        };                                                                                                          // 64
      }, function() {                                                                                               // 65
        return Spacebars.include(view.lookupTemplate("bootstrap_queue_item"));                                      // 66
      }), "\n                " ];                                                                                   // 67
    }), "\n            "), "\n        "), "\n        " ];                                                           // 68
  }), "\n    ");                                                                                                    // 69
}));                                                                                                                // 70
                                                                                                                    // 71
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}).call(this);






(function () {

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                  //
// packages/tomi:upload-jquery/bootstrap/upload_bootstrap.js                                                        //
//                                                                                                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                                                                                                    //
// each upload_multiple template instance holds its own local collection of files list                              // 1
Template['upload_bootstrap'].created = function () {                                                                // 2
  Uploader.init.call(this);                                                                                         // 3
};                                                                                                                  // 4
                                                                                                                    // 5
Template['upload_bootstrap'].helpers({                                                                              // 6
  'submitData': function() {                                                                                        // 7
    if (this.formData) {                                                                                            // 8
      this.formData['contentType'] = this.contentType;                                                              // 9
    } else {                                                                                                        // 10
      this.formData = { contentType: this.contentType };                                                            // 11
    }                                                                                                               // 12
    return JSON.stringify(this.formData);                                                                           // 13
  },                                                                                                                // 14
  'infoLabel': function() {                                                                                         // 15
    var progress = this.globalInfo.get();                                                                           // 16
                                                                                                                    // 17
    // we may have not yet selected a file                                                                          // 18
    if (!this.info.get()) {                                                                                         // 19
      return "";                                                                                                    // 20
    }                                                                                                               // 21
                                                                                                                    // 22
    return progress.running ?                                                                                       // 23
      Uploader.formatProgress(this.info.get().name, progress.progress, progress.bitrate) :                          // 24
      (this.info.get().name + '&nbsp;<span style="font-size: smaller; color: grey">' + bytesToSize(this.info.get().size) + '</span>');
  },                                                                                                                // 26
  'progress': function() {                                                                                          // 27
    return 'width:' + this.globalInfo.get().progress + '%';                                                         // 28
  },                                                                                                                // 29
  buttonState: function() {                                                                                         // 30
    var that = this;                                                                                                // 31
    return {                                                                                                        // 32
      'idle': function () {                                                                                         // 33
        return !that.globalInfo.get().running;                                                                      // 34
      },                                                                                                            // 35
      'cancelled': function () {                                                                                    // 36
        return that.globalInfo.get().cancelled;                                                                     // 37
      },                                                                                                            // 38
      'waiting': function () {                                                                                      // 39
        return that.globalInfo.get().progress !== 100;                                                              // 40
      },                                                                                                            // 41
      'removeFromQueue': function() {                                                                               // 42
        return false;                                                                                               // 43
      }                                                                                                             // 44
    }                                                                                                               // 45
  },                                                                                                                // 46
  'queueItems': function() {                                                                                        // 47
    return this.queueView.get();                                                                                    // 48
  },                                                                                                                // 49
  'showQueue': function() {                                                                                         // 50
    return this.queueView.get().length > 1;                                                                         // 51
  }                                                                                                                 // 52
});                                                                                                                 // 53
                                                                                                                    // 54
Template['upload_bootstrap'].rendered = function () {                                                               // 55
  Uploader.render.call(this);                                                                                       // 56
};                                                                                                                  // 57
                                                                                                                    // 58
                                                                                                                    // 59
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}).call(this);






(function () {

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                  //
// packages/tomi:upload-jquery/dropzone/template.dropzone.js                                                        //
//                                                                                                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                                                                                                    //
                                                                                                                    // 1
Template.__checkName("dropzone");                                                                                   // 2
Template["dropzone"] = new Template("Template.dropzone", (function() {                                              // 3
  var view = this;                                                                                                  // 4
  return HTML.FORM({                                                                                                // 5
    method: "POST",                                                                                                 // 6
    enctype: "multipart/form-data"                                                                                  // 7
  }, "\n        ", HTML.INPUT({                                                                                     // 8
    type: "file",                                                                                                   // 9
    "class": "jqUploadclass",                                                                                       // 10
    multiple: "true",                                                                                               // 11
    "data-content-category": function() {                                                                           // 12
      return Spacebars.mustache(view.lookup("contentType"));                                                        // 13
    },                                                                                                              // 14
    "data-form-data": function() {                                                                                  // 15
      return Spacebars.mustache(view.lookup("submitData"));                                                         // 16
    },                                                                                                              // 17
    accept: function() {                                                                                            // 18
      return Spacebars.mustache(view.lookup("fileTypes"));                                                          // 19
    },                                                                                                              // 20
    style: "display: none"                                                                                          // 21
  }), "\n        ", HTML.DIV({                                                                                      // 22
    "class": "jqDropZone fade"                                                                                      // 23
  }, Blaze.View(function() {                                                                                        // 24
    return Spacebars.makeRaw(Spacebars.mustache(view.lookup("infoLabel")));                                         // 25
  })), "\n    ");                                                                                                   // 26
}));                                                                                                                // 27
                                                                                                                    // 28
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}).call(this);






(function () {

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                  //
// packages/tomi:upload-jquery/dropzone/dropzone.js                                                                 //
//                                                                                                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                                                                                                    //
// each upload_multiple template instance holds its own local collection of files list                              // 1
Template['dropzone'].created = function () {                                                                        // 2
  // start automatically on drop                                                                                    // 3
  this.data.autoStart = true;                                                                                       // 4
                                                                                                                    // 5
  // init the control                                                                                               // 6
  Uploader.init.call(this);                                                                                         // 7
};                                                                                                                  // 8
                                                                                                                    // 9
// each upload_multiple template instance holds its own local collection of files list                              // 10
Template['dropzone'].helpers({                                                                                      // 11
  'infoLabel': function() {                                                                                         // 12
    var progress = this.globalInfo.get();                                                                           // 13
                                                                                                                    // 14
    // we may have not yet selected a file                                                                          // 15
    if (progress.progress == 0 || progress.progress == 100) {                                                       // 16
      return "Drop files here";                                                                                     // 17
    }                                                                                                               // 18
    return progress.progress + "%";                                                                                 // 19
  }                                                                                                                 // 20
});                                                                                                                 // 21
                                                                                                                    // 22
Template['dropzone'].rendered = function () {                                                                       // 23
  // initialise the uploader area                                                                                   // 24
  Uploader.render.call(this);                                                                                       // 25
                                                                                                                    // 26
  // allow visual clues for drag and drop area                                                                      // 27
  $(document).bind('dragover', function (e) {                                                                       // 28
    var dropZone = $('.jqDropZone'),                                                                                // 29
      foundDropzone,                                                                                                // 30
      timeout = window.dropZoneTimeout;                                                                             // 31
    if (!timeout) {                                                                                                 // 32
      dropZone.addClass('in');                                                                                      // 33
    }                                                                                                               // 34
    else {                                                                                                          // 35
      clearTimeout(timeout);                                                                                        // 36
    }                                                                                                               // 37
    var found = false,                                                                                              // 38
      node = e.target;                                                                                              // 39
    do {                                                                                                            // 40
      if ($(node).hasClass('jqDropZone')) {                                                                         // 41
        found = true;                                                                                               // 42
        foundDropzone = $(node);                                                                                    // 43
        break;                                                                                                      // 44
      }                                                                                                             // 45
      node = node.parentNode;                                                                                       // 46
    } while (node != null);                                                                                         // 47
                                                                                                                    // 48
    dropZone.removeClass('in hover');                                                                               // 49
    if (found) {                                                                                                    // 50
      foundDropzone.addClass('hover');                                                                              // 51
    }                                                                                                               // 52
    window.dropZoneTimeout = setTimeout(function () {                                                               // 53
      window.dropZoneTimeout = null;                                                                                // 54
      dropZone.removeClass('in hover');                                                                             // 55
    }, 100);                                                                                                        // 56
  });                                                                                                               // 57
};                                                                                                                  // 58
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}).call(this);






(function () {

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                  //
// packages/tomi:upload-jquery/uploader.js                                                                          //
//                                                                                                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                                                                                                    //
Uploader = {                                                                                                        // 1
	uploadUrl: '/upload',                                                                                              // 2
	createName: function(templateContext) {                                                                            // 3
		if (templateContext.queue.length == 1) {                                                                          // 4
			var file = templateContext.queue[0];                                                                             // 5
			templateContext.info.set(file);                                                                                  // 6
		} else {                                                                                                          // 7
			// calculate size                                                                                                // 8
			var file = {                                                                                                     // 9
				name: templateContext.queue.length + ' files',                                                                  // 10
				size: templateContext.queue.size                                                                                // 11
			}                                                                                                                // 12
			templateContext.info.set(file);                                                                                  // 13
		}                                                                                                                 // 14
	},                                                                                                                 // 15
	/**                                                                                                                // 16
	 * Starts upload                                                                                                   // 17
	 * @param e                                                                                                        // 18
	 * @param {string} name Name of the file in the queue that we want to upload                                       // 19
	 */                                                                                                                // 20
	startUpload: function(e, name) {                                                                                   // 21
		if (e) e.preventDefault();                                                                                        // 22
                                                                                                                    // 23
		if (this.queue.length == 0) return;                                                                               // 24
                                                                                                                    // 25
		var that = this;                                                                                                  // 26
                                                                                                                    // 27
		$.each(this.queue, function (index, queueItem) {                                                                  // 28
                                                                                                                    // 29
			var data = queueItem.data;                                                                                       // 30
			if (name && data.files[0].name !== name) return true;                                                            // 31
                                                                                                                    // 32
			data.jqXHR = data.submit()                                                                                       // 33
				.done(function (data, textStatus, jqXHR) {                                                                      // 34
					console.log('data.sumbit.done: textStatus= ' + textStatus);                                                    // 35
				})                                                                                                              // 36
				.fail(function (jqXHR, textStatus, errorThrown) {                                                               // 37
					console.log('data.sumbit.fail: ' + jqXHR.responseText + ' ' + jqXHR.status + ' ' + jqXHR.statusText);          // 38
				})                                                                                                              // 39
				.always(function (data, textStatus, jqXHR) {                                                                    // 40
					console.log('data.sumbit.always:  textStatus= ' + textStatus);                                                 // 41
				});                                                                                                             // 42
		});                                                                                                               // 43
	},                                                                                                                 // 44
	formatProgress: function(file, progress, bitrate) {                                                                // 45
		return progress + "%&nbsp;of&nbsp;" + file + "&nbsp;<span style='font-size:smaller'>@&nbsp;" + bytesToSize(bitrate) + "&nbsp;/&nbsp;sec</span>"
	},                                                                                                                 // 47
	removeFromQueue: function(e, name) {                                                                               // 48
		e.preventDefault();                                                                                               // 49
                                                                                                                    // 50
		// remove from data queue                                                                                         // 51
		var that = this;                                                                                                  // 52
		$.each(this.queue, function (index, item) {                                                                       // 53
			// skip all with different name                                                                                  // 54
			if (item.name === name) {                                                                                        // 55
				that.queue.splice(index, 1);                                                                                    // 56
				return false;                                                                                                   // 57
			}                                                                                                                // 58
		});                                                                                                               // 59
                                                                                                                    // 60
		// set the queueView                                                                                              // 61
		this.queueView.set(this.queue);                                                                                   // 62
                                                                                                                    // 63
		// update name                                                                                                    // 64
		Uploader.createName(this);                                                                                        // 65
	},                                                                                                                 // 66
	cancelUpload: function (e, name) {                                                                                 // 67
		e.preventDefault();                                                                                               // 68
                                                                                                                    // 69
		var that = this;                                                                                                  // 70
		$.each(this.queue, function (index, queueItem) {                                                                  // 71
			// skip all with different name                                                                                  // 72
			if (name && queueItem.name !== name) return true;                                                                // 73
                                                                                                                    // 74
			// cancel upload of non completed files                                                                          // 75
			if (that.queue[queueItem.name].get().progress !== 100) {                                                         // 76
				queueItem.data.jqXHR.abort();                                                                                   // 77
                                                                                                                    // 78
				// set status to redraw interface                                                                               // 79
				that.queue[queueItem.name].set({running: false, cancelled: true, progress: 0, bitrate: 0});                     // 80
			}                                                                                                                // 81
		});                                                                                                               // 82
                                                                                                                    // 83
		// mark global as cancelled                                                                                       // 84
		if (!name) {                                                                                                      // 85
			this.globalInfo.set({running: false, cancelled: true, progress: 0, bitrate: 0})                                  // 86
		}                                                                                                                 // 87
	},                                                                                                                 // 88
	init: function() {                                                                                                 // 89
		// this is used to view the queue in the interface                                                                // 90
		this.data.queueView = new ReactiveVar([]);                                                                        // 91
		// this holds all the data about the queue                                                                        // 92
		this.data.queue = [];                                                                                             // 93
		// info about the global item being processed                                                                     // 94
		this.data.info = new ReactiveVar;                                                                                 // 95
		// info about global progress                                                                                     // 96
		this.data.globalInfo = new ReactiveVar({running: false, progress: 0, bitrate: 0});                                // 97
	},                                                                                                                 // 98
	render: function () {                                                                                              // 99
		// this.data holds the template context (arguments supplied to the template in HTML)                              // 100
		var templateContext = this.data;                                                                                  // 101
		templateContext.progressBar = this.$('.progress-bar');                                                            // 102
		templateContext.progressLabel = this.$('.progress-label');                                                        // 103
		templateContext.uploadControl = this.$('.jqUploadclass');                                                         // 104
		templateContext.dropZone = this.$('.jqDropZone');                                                                 // 105
                                                                                                                    // 106
                                                                                                                    // 107
		// attach the context to the form object (so that we can access it in the callbacks such as add() etc.)           // 108
		this.find('form').uploadContext = templateContext;                                                                // 109
                                                                                                                    // 110
		// set the upload related callbacks for HTML node that has jqUploadclass specified for it                         // 111
		// Example html node: <input type="file" class="jqUploadclass" />                                                 // 112
		templateContext.uploadControl.fileupload({                                                                        // 113
			url: Uploader.uploadUrl,                                                                                         // 114
			dataType: 'json',                                                                                                // 115
			dropZone: templateContext.dropZone,                                                                              // 116
			add: function (e, data) {                                                                                        // 117
				console.log('render.add ');                                                                                     // 118
                                                                                                                    // 119
				// update the queue collection, so that the ui gets updated                                                     // 120
				$.each(data.files, function (index, file) {                                                                     // 121
					var item = file;                                                                                               // 122
					item.data = data;                                                                                              // 123
					templateContext.queue[file.name] = new ReactiveVar({running: false, progress: 0});                             // 124
					templateContext.queue.push(item);                                                                              // 125
					templateContext.queue.size += parseInt(file.size);                                                             // 126
				});                                                                                                             // 127
                                                                                                                    // 128
				// say name                                                                                                     // 129
				Uploader.createName(templateContext);                                                                           // 130
                                                                                                                    // 131
				// set template context                                                                                         // 132
				templateContext.queueView.set(templateContext.queue);                                                           // 133
                                                                                                                    // 134
				// we can automatically start the upload                                                                        // 135
				if (templateContext.autoStart) {                                                                                // 136
					Uploader.startUpload.call(templateContext);                                                                    // 137
				}                                                                                                               // 138
                                                                                                                    // 139
			}, // end of add callback handler                                                                                // 140
			done: function (e, data) {                                                                                       // 141
				console.log('render.done ');                                                                                    // 142
                                                                                                                    // 143
				templateContext.globalInfo.set({running: false, progress: 100});                                                // 144
                                                                                                                    // 145
				$.each(data.result.files, function (index, file) {                                                              // 146
					Uploader.finished(index, file);                                                                                // 147
				});                                                                                                             // 148
			},                                                                                                               // 149
			fail: function (e, data) {                                                                                       // 150
				console.log('render.fail ');                                                                                    // 151
			},                                                                                                               // 152
			progress: function (e, data) {                                                                                   // 153
				// file progress is displayed only when single file is uploaded                                                 // 154
				var fi = templateContext.queue[data.files[0].name];                                                             // 155
				if (fi) {                                                                                                       // 156
					fi.set({                                                                                                       // 157
						running: true,                                                                                                // 158
						progress: parseInt(data.loaded / data.total * 100, 10),                                                       // 159
						bitrate: data.bitrate                                                                                         // 160
					});                                                                                                            // 161
				}                                                                                                               // 162
			},                                                                                                               // 163
			progressall: function (e, data) {                                                                                // 164
				templateContext.globalInfo.set({                                                                                // 165
					running: true,                                                                                                 // 166
					progress: parseInt(data.loaded / data.total * 100, 10),                                                        // 167
					bitrate: data.bitrate});                                                                                       // 168
			},                                                                                                               // 169
			drop: function (e, data) { // called when files are dropped onto ui                                              // 170
				$.each(data.files, function (index, file) {                                                                     // 171
					console.log("render.drop file: " + file.name);                                                                 // 172
				});                                                                                                             // 173
			},                                                                                                               // 174
			change: function (e, data) { // called when input selection changes (file selected)                              // 175
				// clear the queue, this is used to visualise all the data                                                      // 176
				templateContext.queue = [];                                                                                     // 177
				templateContext.queue.size = 0;                                                                                 // 178
				templateContext.progressBar.css('width', '0%');                                                                 // 179
				templateContext.globalInfo.set({running: false, progress: 0});                                                  // 180
                                                                                                                    // 181
				$.each(data.files, function (index, file) {                                                                     // 182
					console.log('render.change file: ' + file.name);                                                               // 183
				});                                                                                                             // 184
			}                                                                                                                // 185
		})                                                                                                                // 186
			.prop('disabled', !$.support.fileInput)                                                                          // 187
			.parent().addClass($.support.fileInput ? undefined : 'disabled');                                                // 188
	},                                                                                                                 // 189
	finished: function () { }                                                                                          // 190
}                                                                                                                   // 191
                                                                                                                    // 192
bytesToSize = function (bytes) {                                                                                    // 193
	if (bytes == 0) return '0 Byte';                                                                                   // 194
	var k = 1000;                                                                                                      // 195
	var sizes = ['Bytes', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'];                                             // 196
	var i = Math.floor(Math.log(bytes) / Math.log(k));                                                                 // 197
	return (bytes / Math.pow(k, i)).toPrecision(3) + '&nbsp;' + sizes[i];                                              // 198
}                                                                                                                   // 199
                                                                                                                    // 200
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}).call(this);


/* Exports */
if (typeof Package === 'undefined') Package = {};
Package['tomi:upload-jquery'] = {
  Uploader: Uploader
};

})();
