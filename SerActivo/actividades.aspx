<%@ Page Language="C#" AutoEventWireup="true" CodeFile="actividades.aspx.cs" Inherits="actividades" %>

<!DOCTYPE html>
<!-- saved from url=(0088)https://s.codepen.io/boomerang/iFrameKey-dbd1801e-9f14-8224-7423-745ed000edd7/index.html -->
<html lang="en" class=""><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><script src="./arlowebcontrols_bundle.js.descarga" async=""></script><script src="./console_runner-ce3034e6bde3912cc25f83cccb7caa2b0f976196f2f2d52303a462c826d54a73.js.descarga"></script><script src="./css_live_reload_init-e9c0cc5bb634d3d14b840de051920ac153d7d3d36fb050abad285779d7e5e8bd.js.descarga"></script><meta name="robots" content="noindex"><link rel="shortcut icon" type="image/x-icon" href="https://static.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico"><link rel="mask-icon" type="" href="https://static.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111"><link rel="canonical" href="https://codepen.io/claudio-monta-ez/pen/YJXbKb">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./font-awesome.min.css" rel="stylesheet" type="text/css">

<style class="cp-pen-styles">@font-face {
  font-family: Conduititcmedium;
  src: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/597099/conduititc-medium.eot");
  src: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/597099/conduititc-medium.woff");
}

body {
  background-color: #eee;
}


/** Normalize **/

@charset "UTF-8";
*,
*::after,
*::before {
  box-sizing: inherit;
}

.arlo {
  font-family: sans-serif;
  line-height: 1.15;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
}

.arlo article,
.arlo aside,
.arlo details,
.arlo figcaption,
.arlo figure,
.arlo footer,
.arlo header,
.arlo main,
.arlo menu,
.arlo nav,
.arlo section,
.arlo summary {
  display: block;
}

.arlo audio,
.arlo canvas,
.arlo progress,
.arlo video {
  display: inline-block;
}

.arlo audio:not([controls]) {
  display: none;
  height: 0;
}

.arlo progress {
  vertical-align: baseline;
}

.arlo template,
.arlo [hidden] {
  display: none;
}

.arlo a {
  background-color: transparent;
  -webkit-text-decoration-skip: objects;
}

.arlo a:active,
.arlo a:hover {
  outline-width: 0;
}

.arlo abbr[title] {
  border-bottom: none;
  text-decoration: underline;
  text-decoration: underline dotted;
}

.arlo b,
.arlo strong {
  font-weight: inherit;
}

.arlo b,
.arlo strong {
  font-weight: bolder;
}

.arlo code,
.arlo kbd,
.arlo samp {
  font-family: monospace, monospace;
  font-size: 1em;
}

.arlo dfn {
  font-style: italic;
}

.arlo h1 {
  font-size: 2em;
  margin: 0.75em 0;
}

.arlo mark {
  background-color: #ff0;
  color: #000;
}

.arlo small {
  font-size: 80%;
}

.arlo sub,
.arlo sup {
  font-size: 75%;
  line-height: 0;
  position: relative;
  vertical-align: baseline;
}

.arlo sub {
  bottom: -0.25em;
}

.arlo sup {
  top: -0.5em;
}

.arlo img {
  border-style: none;
}

.arlo svg:not(:root) {
  overflow: hidden;
}

.arlo figure {
  margin: 1.5em 40px;
}

.arlo hr {
  box-sizing: content-box;
  height: 0;
  overflow: visible;
}

.arlo pre {
  font-family: monospace, monospace;
  font-size: 1em;
}

.arlo button,
.arlo input,
.arlo optgroup,
.arlo select,
.arlo textarea {
  font: inherit;
  margin: 0;
}

.arlo button,
.arlo input {
  overflow: visible;
}

.arlo button,
.arlo select {
  text-transform: none;
}

.arlo button,
.arlo html [type="button"],
.arlo [type="reset"],
.arlo [type="submit"] {
  -webkit-appearance: button;
}

.arlo button::-moz-focus-inner,
.arlo [type="button"]::-moz-focus-inner,
.arlo [type="reset"]::-moz-focus-inner,
.arlo [type="submit"]::-moz-focus-inner {
  border-style: none;
  padding: 0;
}

.arlo button:-moz-focusring,
.arlo [type="button"]:-moz-focusring,
.arlo [type="reset"]:-moz-focusring,
.arlo [type="submit"]:-moz-focusring {
  outline: 1px dotted ButtonText;
}

.arlo [type="checkbox"],
.arlo [type="radio"] {
  box-sizing: border-box;
  padding: 0;
}

.arlo [type="number"]::-webkit-inner-spin-button,
.arlo [type="number"]::-webkit-outer-spin-button {
  height: auto;
}

.arlo [type="search"] {
  -webkit-appearance: textfield;
  outline-offset: -2px;
}

.arlo [type="search"]::-webkit-search-cancel-button,
.arlo [type="search"]::-webkit-search-decoration {
  -webkit-appearance: none;
}

.arlo::-webkit-input-placeholder {
  color: inherit;
  opacity: 0.54;
}

.arlo::-webkit-file-upload-button {
  -webkit-appearance: button;
  font: inherit;
}

.arlo fieldset {
  border: 1px solid #c0c0c0;
  margin: 0 2px;
  padding: 0.35em 0.625em 0.75em;
}

.arlo legend {
  box-sizing: border-box;
  display: table;
  max-width: 100%;
  white-space: normal;
  color: inherit;
  padding: 0;
}

.arlo optgroup {
  font-weight: bold;
}

.arlo textarea {
  overflow: auto;
}

.arlo ol,
.arlo ul,
.arlo li {
  list-style: none;
  padding: 0;
  margin: 0;
}


/** Arlo Theme General Style **/

.arlo {
  font-size: 16px;
  font-family: 'Roboto', Helvetica, Arial, sans-serif;
  line-height: 1.25;
  max-width: 1140px;
  margin: 2em auto;
  color: #212121;
}

.arlo a,
.arlo .arlo-filter-unordered-list li,
.arlo .arlo-show-more {
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -ms-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
}

.arlo .arlo-loading-overlay {
  position: fixed;
  z-index: 999;
  height: 2em;
  width: 2em;
  overflow: show;
  margin: auto;
  bottom: 50%;
  top: 50%;
  left: 50%;
  right: 50%;
}

.arlo .arlo-loading-overlay:before {
  content: '';
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(255, 255, 255, 0.3);
}

.arlo .arlo-loading-overlay:not(:required) {
  /* hide "loading..." text */
  font: 0/0 a;
  color: transparent;
  text-shadow: none;
  background-color: transparent;
  border: 0;
}

.arlo .arlo-loading-overlay:not(:required):after {
  content: '';
  display: block;
  font-size: 10px;
  width: 1em;
  height: 1em;
  margin-top: -0.5em;
  -webkit-animation: spinner 1500ms infinite linear;
  animation: spinner 1500ms infinite linear;
  border-radius: 0.5em;
  box-shadow: rgba(0, 0, 0, 0.75) 1.5em 0 0 0, rgba(0, 0, 0, 0.75) 1.1em 1.1em 0 0, rgba(0, 0, 0, 0.75) 0 1.5em 0 0, rgba(0, 0, 0, 0.75) -1.1em 1.1em 0 0, rgba(0, 0, 0, 0.75) -1.5em 0 0 0, rgba(0, 0, 0, 0.75) -1.1em -1.1em 0 0, rgba(0, 0, 0, 0.75) 0 -1.5em 0 0, rgba(0, 0, 0, 0.75) 1.1em -1.1em 0 0;
}

@-webkit-keyframes spinner {
  0% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
    transform: rotate(360deg);
  }
}

@keyframes spinner {
  0% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
    transform: rotate(360deg);
  }
}

.arlo a {
  color: #fed006;
}

.arlo a:hover {
  color: #ffe264
}

.arlo a,
.arlo a:hover {
  text-decoration: none;
}

.arlo h1 {
  font-size: 36px;
  line-height: 43px;
}

.arlo h2 {
  font-size: 25px;
  line-height: 35px;
}

.arlo h3 {
  font-size: 20px;
  line-height: 30px;
}

.arlo .arlo-h2,
.arlo .arlo-h3 {
  margin-bottom: 5px;
}

.arlo .arlo-h2 {
  font-size: 140%;
}

.arlo .arlo-h3 {
  font-size: 120%;
}

.arlo select {
  padding: 10px 70px 10px 24px;
  cursor: pointer;
}

.arlo .tooltipcontent {
  display: none;
}

.arlo .arlo-session-info {
  cursor: pointer;
}

.arlo .arlo-sessions li * {
  display: inline-block;
  word-wrap: normal;
}

.arlo .arlo-sessions li .arlo-session-name {
  display: block;
}

.arlo .arlo-bg-color-primary {
  background-color: #fed006;
}

.arlo .arlo-bg-color-secondary {
  background-color: #6A869E;
}

.arlo .arlo-bg-color-filters {
  background-color: #fed006;
}

.arlo .arlo-bg-color-highlight {
  background-color: #ffe264;
}

.arlo .arlo-bg-color-normal {
  background-color: #eeeeee;
}

.arlo .arlo-bg-color-darker {
  background-color: #444444;
}

.arlo .arlo-bg-color-darkest {
  background-color: #000000;
}

.arlo .arlo-text-color-primary {
  color: #212121;
}

.arlo .arlo-text-color-secondary {
  color: #fed006;
}

.arlo .arlo-text-color-contrast {
  color: #ffffff;
}

.arlo .arlo-text-color-lightest {
  color: #eeeeee;
}

.arlo .arlo-text-color-light {
  color: #a7a7a7;
}

.arlo .arlo-text-color-normal {
  color: #444444;
}

.arlo .arlo-text-color-dark {
  color: #000000;
}

.arlo .arlo-text-color-link {
  color: #fed006;
}

.arlo .arlo-font-primary {
  font-family: "Roboto", Helvetica, Arial, sans-serif;
}

.arlo .arlo-font-secondary {
  font-family: "ConduititcMedium", Helvetica, Arial, sans-serif;
}

.arlo .arlo-font-special {
  font-family: "ConduititcMedium", "Roboto", Helvetica, Arial, sans-serif;
}

.arlo .arlo-font-size-larger {
  font-size: 110%;
}

.arlo .arlo-clearfix {
  zoom: 1;
}

.arlo .arlo-clearfix:after {
  visibility: hidden;
  display: block;
  font-size: 0;
  content: " ";
  clear: both;
  height: 0;
}

.arlo * {
  box-sizing: border-box;
}

.arlo *:first-child+html .arlo-clearfix {
  zoom: 1;
}


/** Tooltip **/

.arlo .tooltipcontent {
  display: none;
}

.arlo .tooltip.bottom .tooltip-arrow {
  padding: 0 !important;
}

.arlo .arlo-detail .tooltip .tooltip-inner {
  text-align: left;
  padding: 16px 20px;
  background: #393939;
  max-width: 250px;
}

.arlo .arlo-detail .tooltip.bottom .tooltip-arrow {
  border-bottom-color: #aeaeae;
}

.arlo .arlo-detail .tooltip .tooltip-inner li {
  border-bottom: 1px solid rgba(255, 255, 255, 0.1);
  padding-bottom: 6px;
  margin-bottom: 6px;
}

.arlo .arlo-detail .tooltip .tooltip-inner li:last-child {
  border-bottom: 0;
  padding-bottom: 0;
  margin-bottom: 0;
}

.arlo .arlo-detail .tooltip .tooltip-inner h3 {
  margin-top: 0;
}

.arlo .arlo-event-listitem .arlo-detail .tooltip .arlo-session {
  font-size: 1.2em;
}

.arlo .arlo-event-listitem .arlo-detail .tooltip .arlo-session * {
  padding: 0;
}

.arlo .tooltip.in {
  opacity: 1;
}

.arlo .arlo-sessions {
  margin: 0;
}

.arlo .arlo-sessions .arlo-session .arlo-session-name {
  font-size: 1.1em;
  font-weight: 700;
  color: #fed006
}

.arlo .arlo-sessions .arlo-session .arlo-session * {
  line-height: 1;
}

.arlo .arlo-sessions li * {
  display: inline-block;
  word-wrap: normal;
}

.arlo .arlo-sessions li * .arlo-session-name {
  display: block;
}


/** Filters **/

.arlo #arlo-filter-toggle {
  display: none;
}

.arlo[max-width~="659px"] .arlo-filters-container {
  width: 100%;
}

.arlo[max-width~="659px"] .arlo-filters-container .arlo-timezone-select {
  max-width: 100%;
}

.arlo[max-width~="659px"] .arlo-filters-container .arlo-collapse-button {
  display: block;
}

.arlo[max-width~="659px"] .arlo-filters-container div[id^='filter-'] {
  padding-right: 0;
}

.arlo[max-width~="659px"] .arlo-filters-container * {
  width: 100%;
}

.arlo[max-width~="659px"] .arlo-filters-container li {
  margin-bottom: 10px;
}

.arlo[max-width~="659px"] .arlo-filters-container #arlo-filter-toggle {
  display: block;
  cursor: pointer;
  background: #fed006 color: white;
  padding: 1em 2em;
  margin-bottom: 35px;
}

.arlo[max-width~="659px"] .arlo-filters-container #arlo-filter-toggle i {
  float: right;
  width: auto;
}

.arlo[max-width~="659px"] .arlo-filters-container #arlo-filter-toggle .arlo-filter-toggle-hide {
  display: none;
}

.arlo[max-width~="659px"] .arlo-filters-container #arlo-filter-toggle .arlo-filter-toggle-show {
  display: block;
}

.arlo[max-width~="659px"] .arlo-filters-container #filters {
  display: none;
}

.arlo[max-width~="659px"] .arlo-filters-container.arlo-show-filter #filters {
  display: block;
}

.arlo[max-width~="659px"] .arlo-filters-container.arlo-show-filter #arlo-filter-toggle .arlo-filter-toggle-hide {
  display: block;
}

.arlo[max-width~="659px"] .arlo-filters-container.arlo-show-filter #arlo-filter-toggle .arlo-filter-toggle-show {
  display: none;
}

.arlo .arlo-filters[min-width~="551px"] div[id^="filter-"] {
  display: inline-block !important;
}

.arlo .arlo-filters .arlo-taxonomy-filters,
.arlo .arlo-filters .arlo-other-filters {
  max-width: 100%;
  margin: 0 auto;
  text-align: center;
  background: #e4e4e4;
}

.arlo .arlo-filters .arlo-taxonomy-filters::after,
.arlo .arlo-filters .arlo-other-filters::after {
  clear: both;
  content: "";
  display: table;
}

.arlo .arlo-filters .arlo-filter-unordered-list li,
.arlo .arlo-filters div[id^='filter-'],
.arlo .arlo-filters div[id*=' filter-'],
.arlo .arlo-filters .arlo-checkbox-filter-option {
  display: inline-block;
}

.arlo .arlo-filters select,
.arlo .arlo-filters input.arlo-search {
  border-radius: 2px;
  display: inline;
  padding: 20px;
  border: none;
  color: #5f5f5f;
  background: transparent;
  font-size: 16px;
  line-height: 20px;
  font-weight: 400;
}

.arlo .arlo-filters select {
    padding-right: 40px;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    background: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABwAAAAcBAMAAACAI8KnAAAAGFBMVEUAAABgYGBdXV1eXl5eXl5fX19eXl5fX19k8kobAAAAB3RSTlMAUGB/gJ+gMr4LlQAAAGNJREFUGNPF0LENwCAMRNEPBTUj0DFIFsgW9Ejo1k9xhIQ2TVyd9VzYht/q2ELS6c6habhtGhAlc5JUCJK5ScpQzUlSx9PDWGDyjZMXmheaH5zc19ZxQ6hvhLgh1L7dHPKHR13jrijFraT9RAAAAABJRU5ErkJggg==') no-repeat;
    background-size: 16px;
    background-position: calc(100% - 20px) center;
    background-repeat: no-repeat;
    background-color: #e4e4e4;
}

.arlo .arlo-filters select:focus {
  outline: none;
}

.arlo .arlo-filters select.arlo-timezone-select {
  color: #444;
  border: 1px solid #c1c1c1;
}

.arlo .arlo-filters div[id^='filter-'],
.arlo .arlo-filters div[id*=' filter-'] {
  padding-right: 10px;
  vertical-align: bottom;
}

.arlo .arlo-filters .arlo-filter-unordered-list li,
.arlo .arlo-filters .arlo-show-more {
  cursor: pointer;
  font-size: 14px;
  padding: 8px 20px;
  float: left;
}

.arlo .arlo-filters .arlo-filter-categories .arlo-filter-unordered-list li {
  margin-bottom: 10px;
  padding: 5px 20px;
  border-radius: 2px;
  margin-right: 2px;
  float: none;
  background: transparent;
  color: #fed006 border: 1px solid #fed006
}

.arlo .arlo-filters .arlo-filter-categories .arlo-filter-unordered-list li:hover,
.arlo .arlo-filters .arlo-filter-unordered-list li.selected,
.arlo .arlo-filters .arlo-checkbox-filter-option input[id^="loccode"]:checked+label {
  background-color: #e5f7ff;
}

.arlo .arlo-filters .arlo-checkbox-filter-option input[id^="loccode"] {
  display: none;
}

.arlo .arlo-filters .arlo-timezone-select {
  display: none;
  max-width: 360px;
  background-color: transparent;
}

.arlo .arlo-filters .arlo-timezone-select:focus {
  background-color: transparent !important;
}

.arlo .arlo-collapse-button {
  display: none;
  background: #eef1f1;
  margin: 10px 0;
  padding: 10px;
  border-radius: 4px;
  cursor: pointer;
}

.arlo .arlo-collapse-button.arlo-visible:after,
.arlo .arlo-collapse-button.arlo-hidden:after {
  margin-left: 10px;
  font-family: FontAwesome;
  content: "";
}


/** Upcoming list **/

.arlo .arlo-no-results-found {
  text-align: center;
  font-size: 20px;
}

.arlo .arlo-no-results {
  display: none;
  text-align: center;
}

.arlo .arlo-no-results hr {
  display: block;
  height: 1px;
  border: 0;
  border-top: 1px solid #ccc;
  margin: 1em 0;
  padding: 0;
}

.arlo .arlo-no-results a {
  text-align: center;
  text-decoration: none;
  font-size: 80%;
  line-height: 40px;
  border-radius: 4px;
  padding: 12px 20px;
  color: #fff;
  background-color: #003a5d;
  margin-left: 15px;
}

.arlo .arlo-onlineOrVenueFilterList,
.arlo .arlo-filter-unordered-list {
  list-style: none;
  padding-left: 0;
  margin: 0;
}

.arlo .arlo-onlineOrVenueFilterList li,
.arlo .arlo-filter-unordered-list li,
.arlo .arlo-event-list>li {
  list-style: none;
}

.arlo .arlo-show-more-container {
  width: 100%;
  margin-top: 40px;
  text-align: center;
}

.arlo .arlo-show-more {
  display: inline-block;
  min-width: 150px;
  padding: 10px 30px;
  background-color: transparent;
  border-radius: 2px;
  color: #a7a7a7;
  cursor: pointer;
  font-size: 14px;
  text-decoration: none;
  text-transform: uppercase;
  letter-spacing: 1px;
}

.arlo .arlo-show-more:after {
  content: "\f078";
  display: inline-block;
  margin-left: 20px;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

.arlo .arlo-show-more:hover {
  color: #212121;
}

.arlo .arlo-event-list {
  list-style: none;
  padding-left: 0;
  margin: 20px auto 0;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}

.arlo .arlo-event-list[max-width~="550px"] .arlo-title .arlo-provider-name {
  font-size: 14px;
}

.arlo .arlo-event-list[max-width~="550px"] .arlo-title .arlo-h2 {
  font-size: 20px;
  line-height: 1.2;
}

.arlo .arlo-event-list[max-width~="550px"] .arlo-detail {
  max-width: 100%;
}

.arlo .arlo-event-list[max-width~="550px"] .arlo-detail .arlo-more-info-button a,
.arlo .arlo-event-list[max-width~="550px"] .arlo-detail .arlo-event-register,
.arlo .arlo-event-list[max-width~="550px"] .arlo-detail .arlo-event-register-info {
  width: 100%;
  margin-left: 0;
  margin-right: 0;
}

.arlo .arlo-event-list[max-width~="550px"] .arlo-detail-container {
  margin-left: 0px;
}

.arlo .arlo-event-list[max-width~="550px"] .arlo-register-container {
  float: none;
  margin-top: 15px;
}

.arlo .arlo-event-list[max-width~="550px"] .arlo-event-listitem .arlo-more-info-button>a,
.arlo .arlo-event-list[max-width~="550px"] .arlo-event-listitem .arlo-event-register {
  width: 100%;
  margin-right: 0;
  margin-left: 0;
  text-align: center;
}

.arlo .arlo-event-list .arlo-detail-container {
  margin-left: 140px;
  overflow: auto;
}

.arlo .arlo-event-listitem {
  float: left;
  position: relative;
  max-width: 100%;
  margin-left: auto;
  margin-right: auto;
  font-size: 16px;
  width: 340px;
  height: 340px;
  margin-top: 30px;
  perspective: 1000px;
  transform-style: preserve-3d;
  list-style: none;
}

.arlo .arlo-event-list[max-width~="975px"] .arlo-event-listitem {
  width: 340px;
  height: 380px;
  margin-top: 30px;
}

.arlo .arlo-event-list[min-width~="976px"] .arlo-event-listitem {
  width: 300px;
  height: 380px;
  margin-top: 30px;
}

.arlo .arlo-event-list[min-width~="1083px"] .arlo-event-listitem {
  width: 340px;
  height: 380px;
  margin-top: 30px;
}

.arlo .arlo-event-listitem::after {
  clear: both;
  content: "";
  display: table;
}

.arlo .arlo-event-listitem .arlo-event-card {
  position: relative;
  transform-style: preserve-3d;
  transition: 0.5s;
  width: 100%;
  height: 100%;
}

.arlo .arlo-event-listitem .arlo-event-card-front,
.arlo .arlo-event-listitem .arlo-event-card-back {
  position: absolute;
  top: 0;
  left: 0;
  display: flex;
  flex-direction: column;
  width: 100%;
  height: 100%;
  cursor: pointer;
  transition: .6s;
  backface-visibility: hidden;
  transform-style: preserve-3d;
  background-color: #fafafa;
  border-radius: 3px;
  -webkit-box-shadow: 0 2px 6px 0 rgba(0, 0, 0, .2);
  box-shadow: 0 2px 6px 0 rgba(0, 0, 0, .2);
}

.arlo .arlo-event-listitem .arlo-event-card-back {
  align-items: center;
  justify-content: center;
  padding: 1em 30px;
  text-align: center;
}

.arlo .arlo-event-listitem .arlo-online-card .arlo-detail {
  background-color: #fed006;
}

.arlo .arlo-event-listitem .arlo-event-card-front .arlo-event-image {
  width: 100%;
  height: 200px;
  max-height: 200px;
  z-index: -2;
  background-size: cover;
}

.arlo .arlo-event-listitem .arlo-detail *,
.arlo .arlo-event-listitem .arlo-summary {
  color: #5e5e5e;
}

.arlo .arlo-event-listitem .arlo-online-card .arlo-detail * {
  color: white;
}

.arlo .arlo-event-listitem .arlo-event-card-front {
  background-position: center center;
  background-repeat: no-repeat;
  background-size: cover;
  transform: rotateY(0deg);
  z-index: 2;
}

.arlo .arlo-event-listitem .arlo-event-card-back {
  justify-content: center;
  transform: rotateY(-180deg);
}

.arlo .arlo-event-listitem:hover .arlo-event-card-front {
  transform: rotateY(180deg);
}

.arlo .arlo-event-listitem:hover .arlo-event-card-back {
  transform: rotateY(0deg);
}

.arlo .arlo-event-list .arlo-date {
  display: flex;
  position: absolute;
  top: 0;
  left: 30px;
  padding: 10px 15px;
  flex-direction: row;
  justify-content: center;
  text-align: center;
  background: #fed006;
}

.arlo .arlo-event-list[max-width~="550px"] .arlo-date {
  float: none;
  margin-left: auto;
  margin-right: auto;
}

.arlo .arlo-event-listitem .arlo-date .arlo-date-container {
  text-align: center;
  vertical-align: middle;
  font-size: 1.2em;
  line-height: 0;
}

.arlo .arlo-event-listitem .arlo-date .arlo-start-date {
  font-size: 34px;
  line-height: 1em;
  font-weight: bold;
}

.arlo .arlo-event-listitem .arlo-date .arlo-start-month {
  text-transform: uppercase;
  display: inline-block;
  font-size: 14px;
  line-height: 1em;
}

.arlo .arlo-event-listitem .arlo-detail {
  flex-grow: 1;
  display: flex;
  justify-content: center;
  flex-direction: column;
  padding: 10px 30px;
}

.arlo .arlo-event-listitem .arlo-duration {
  padding-right: 5px !important;
}

.arlo .arlo-event-listitem .arlo-title {
  line-height: 30px;
  word-wrap: break-word;
}

.arlo .arlo-event-listitem .arlo-name {
  display: inline-block;
  font-size: 20px;
  font-weight: bold;
}

.arlo .arlo-event-listitem .arlo-provider-name {
  font-size: 14px;
  opacity: .7;
}

.arlo .arlo-event-listitem .arlo-detail .arlo-location,
.arlo .arlo-event-listitem .arlo-detail .arlo-duration,
.arlo .arlo-event-listitem .arlo-detail .arlo-online {
  margin-right: 10px;
  text-decoration: none;
  font-size: 16px;
  opacity: .7;
}

.arlo .arlo-event-listitem .arlo-detail .arlo-duration,
.arlo .arlo-event-listitem .arlo-detail .arlo-notice {
  display: inline-block;
}

.arlo .arlo-event-listitem .arlo-detail .arlo-notice {
  font-weight: 700;
}

.arlo .arlo-event-listitem .arlo-summary {
  margin-bottom: 1.5em;
  font-size: 18px;
}

.arlo .arlo-event-listitem .arlo-detail .arlo-offers {
  margin-bottom: 5px;
}

.arlo .arlo-event-listitem .arlo-detail .arlo-offer-ul {
  padding-left: 0;
}

.arlo .arlo-event-listitem .arlo-detail .arlo-offer-ul .arlo-offer-li {
  list-style: none;
  padding: 2px;
}

.arlo .arlo-summary,
.arlo .arlo-offers {
  font-style: normal;
}

.arlo .arlo-offer-container,
.arlo .arlo-offer-li {
  font-size: 20px;
  line-height: 25px;
}


/* Event registration */

.arlo .arlo-event-listitem .arlo-more-info-button>a,
.arlo .arlo-event-listitem .arlo-event-register,
.arlo .arlo-event-listitem .arlo-event-register-info {
  display: block;
  float: right;
  margin: 5px;
  padding: 7px 25px 7px;
  border-radius: 3px;
  text-decoration: none;
  text-transform: uppercase;
  color: white;
  font-size: 14px;
  line-height: 20px;
  letter-spacing: 1px;
}

.arlo .arlo-event-listitem .arlo-event-register:hover,
.arlo .arlo-event-listitem .arlo-more-info-button>a:hover {
  text-shadow: 0 0 2px white;
  background-color: #ffe264;
}

.arlo .arlo-event-listitem .arlo-event-register {
  background-color: #fed006;
}

.arlo .arlo-event-listitem .arlo-event-register-info {
  background: #eeeeee;
  color: #212121;
}

.arlo .arlo-event-listitem .arlo-event-register-info p {
  padding: 0;
  margin: 0;
}

.arlo .arlo-event-listitem .arlo-event-register.arlo-waiting-list {
  background-color: #212121
}

.arlo .arlo-event-listitem .arlo-event-register.arlo-waiting-list:hover {
  background-color: #ffe264;
}

.arlo .arlo-event-listitem .arlo-places-remaining {
  font-weight: 700;
  text-align: right;
  margin-bottom: .5em;
  margin-right: 5px;
  text-transform: uppercase;
}
</style>


    <style type="text/css">[responsive-image] > img, [data-responsive-image] {overflow: hidden; padding: 0; } [responsive-image] > img, [data-responsive-image] > img { width: 100%;}</style><style type="text/css">.arlo-instant-search-results{position:absolute!important;margin-top:-1px;max-width:400px;z-index:9}.arlo-instant-search-results:not(:empty){border:1px solid #ccc;background-color:#fff}.arlo-instant-search-results .arlo-eventtemplate-listitem em{font-style:normal;font-weight:700}.arlo-instant-search-results .arlo-no-results-found{border:1px solid #ccc;background-color:#fff;font-style:italic;color:#ccc}.arlo-instant-search-results .arlo-eventtemplate-listitem a,.arlo-instant-search-results .arlo-no-results-found{padding:8px;min-width:250px;display:block}.arlo-instant-search-results .arlo-eventtemplate-listitem a{color:#3c3c3c}.arlo-instant-search-results .arlo-eventtemplate-listitem a:focus,.arlo-instant-search-results .arlo-eventtemplate-listitem a:hover{background-color:#fcfcfc;text-decoration:none}.arlo-instant-search-results .arlo-eventtemplate-listitem.selected a{background-color:#f7f7f7}</style></head><body>
<!--
Arlo Web Control Demo - Events list
Documentation: https://developer.arlo.co/doc/webcontrols/upcomingevents
-->

  <!-- Target Elements -->
  <div class="arlo arlo-loaded" style="position: relative;">
    <div class="arlo-filters-container">
      <div id="filters"><div>
    <div class="arlo-filters arlo-font-primary" min-width="551px" style="position: relative;">
      <div class="arlo-other-filters arlo-clearfix arlo-font-primary">
        
      </div>
    <div class="resize-sensor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; z-index: -1; visibility: hidden;"><div class="resize-sensor-expand" style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;"><div style="position: absolute; left: 0px; top: 0px; transition: all 0s ease 0s; width: 1150px; height: 70px;"></div></div><div class="resize-sensor-shrink" style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;"><div style="position: absolute; left: 0; top: 0; transition: 0s; width: 200%; height: 200%"></div></div></div></div>
  </div></div>

      <div id="arlo-filter-toggle">
        <div class="arlo-filter-toggle-show">
          Show filters <i class="fa fa-chevron-down"></i>
        </div>
        <div class="arlo-filter-toggle-hide">
          Hide filters <i class="fa fa-chevron-up"></i>
        </div>
      </div>
    </div>
    <div id="upcoming-events"><ul class="arlo-event-list" min-width="976px 1083px" style="position: relative;"><div class="resize-sensor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; z-index: -1; visibility: hidden;"><div class="resize-sensor-expand" style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;"><div style="position: absolute; left: 0px; top: 0px; transition: all 0s ease 0s; width: 1150px; height: 1727px;"></div></div><div class="resize-sensor-shrink" style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;"><div style="position: absolute; left: 0; top: 0; transition: 0s; width: 200%; height: 200%"></div></div></div><script type="application/ld+json">{"@type":"ItemList","itemListElement":[{"@type":"ListItem","position":1,"url":"https://s.codepen.io/course-template/?eventtemplate=1-plan-your-next-trip-to-the-moon&event=532"},{"@type":"ListItem","position":2,"url":"https://s.codepen.io/course-template/?eventtemplate=2-your-elusive-creative-genius&event=244"},{"@type":"ListItem","position":3,"url":"https://s.codepen.io/course-template/?eventtemplate=3-empowering-your-people&event=52"},{"@type":"ListItem","position":4,"url":"https://s.codepen.io/course-template/?eventtemplate=4-business-skills-for-new-managers&event=55"},{"@type":"ListItem","position":5,"url":"https://s.codepen.io/course-template/?eventtemplate=5-%E5%86%99%E5%A5%BD%E5%95%86%E4%B8%9A%E8%AE%A1%E5%88%92%E4%B9%A6&event=245"},{"@type":"ListItem","position":6,"url":"https://s.codepen.io/course-template/?eventtemplate=6-building-your-brand&event=246"},{"@type":"ListItem","position":7,"url":"https://s.codepen.io/course-template/?eventtemplate=8-teaching-and-learning-for-unit-4-promoting-childrens-positive-behaviour-level-4-education-qualification&event=60"},{"@type":"ListItem","position":8,"url":"https://s.codepen.io/course-template/?eventtemplate=7-m%C4%81ori-artefacts-annual-forum&event=595"},{"@type":"ListItem","position":9,"url":"https://s.codepen.io/course-template/?eventtemplate=11-how-great-people-inspire-action&event=580"},{"@type":"ListItem","position":10,"url":"https://s.codepen.io/course-template/?eventtemplate=9-basic-conference&event=253"},{"@type":"ListItem","position":11,"url":"https://s.codepen.io/course-template/?eventtemplate=176-partner-conference&event=257"},{"@type":"ListItem","position":12,"url":"https://s.codepen.io/course-template/?eventtemplate=395-external-business-relations&event=601"}]}</script><li class="arlo-event-listitem" id="view63">
    
      <div class="arlo-event-card arlo-online-card">
    

          <div class="arlo-event-card-front">
            
            <div class="arlo-date">
              <div class="arlo-date-container arlo-text-color-contrast">
                <div class="arlo-start-date">
                  04
                </div>
                <div class="arlo-start-month">
                  Nov
                </div>
              </div>
            </div>
            
            <div class="arlo-event-image" style="background-image: url(&quot;http://media.istockphoto.com/photos/designer-drawing-website-ux-app-development-picture-id628609112?k=6&amp;m=628609112&amp;s=170667a&amp;w=0&amp;h=bVSiVtnnfHLHX4_yr6List1__XqvL3fySYvD08_wkZQ=&quot;);">
            
            </div>

            <div class="arlo-detail">
              
                <div class="arlo-provider-name">
                  Provided by Rocket Labs
                </div>
              
              
              <div class="arlo-name arlo-text-color-contrast">
                Plan your next trip to the moon
              </div>

              <div class="arlo-location arlo-text-color-contrast">
                Online
              </div>
            </div>

          </div>

            <div class="arlo-event-card-back">

              <div class="arlo-summary arlo-text-color-contrast">
                Get prepare for your exciting next trip to the moon. Know what you need to do to be ready for launch.
              </div>

              <a class="arlo-event-register" href="https://websitetestdata.arlo.co/register?sgid=2ddcd4cf35ac46d99423167e8e04fc90">Register</a>
              <span class="arlo-loadEventTemplateHiddenButtonContainer">
                <div data-id="2q13ihvd" style="display: none;" class="arlo-subcontrol EventTemplate" id="subcontrol-2q13ihvd">View Template Details</div>
              </span>

            </div>        
      </div>

  <script type="application/ld+json">{"@context":"http://schema.org","@type":"Event","name":"Plan your next trip to the moon","startDate":"2018-11-04T21:00:00.0000000-03:00","endDate":"2018-11-04T21:45:00.0000000-03:00","url":"https://s.codepen.io/course-template/?eventtemplate=1-plan-your-next-trip-to-the-moon&amp;event=532","description":"Get prepare for your exciting next trip to the moon. Know what you need to do to be ready for launch.","offers":{"@type":"AggregateOffer","highPrice":0,"lowPrice":0,"price":0,"priceCurrency":"NZD","availability":"http://schema.org/InStock","url":"https://s.codepen.io/course-template/?eventtemplate=1-plan-your-next-trip-to-the-moon&amp;event=532"},"location":{"@type":"Place","name":"","address":{"@type":"Text"}},"performer":[{"@type":"Person","name":"Asher Lopez","url":"https://s.codepen.io/presenter/?presenter=12-asher-lopez"}]}</script><script type="application/ld+json">{"@context":"http://schema.org","@type":"Course","name":"Plan your next trip to the moon","description":"Get prepare for your exciting next trip to the moon. Know what you need to do to be ready for launch."}</script></li><li class="arlo-event-listitem" id="view65">
    
      <div class="arlo-event-card arlo-online-card">
    

          <div class="arlo-event-card-front">
            
            <div class="arlo-date">
              <div class="arlo-date-container arlo-text-color-contrast">
                <div class="arlo-start-date">
                  07
                </div>
                <div class="arlo-start-month">
                  Nov
                </div>
              </div>
            </div>
            
            <div class="arlo-event-image" style="background-image: url(&quot;http://media.istockphoto.com/photos/checking-new-menu-picture-id503492356?k=6&amp;m=503492356&amp;s=170667a&amp;w=0&amp;h=SWTRi7aE1hQ4jOFJa7D6zqOc4IpkQNu2xnm7-tV6cEE=&quot;);">
            
            </div>

            <div class="arlo-detail">
              
                <div class="arlo-provider-name">
                  Provided by GeoTech
                </div>
              
              
              <div class="arlo-name arlo-text-color-contrast">
                Your elusive creative genius
              </div>

              <div class="arlo-location arlo-text-color-contrast">
                Online
              </div>
            </div>

          </div>

            <div class="arlo-event-card-back">

              <div class="arlo-summary arlo-text-color-contrast">
                Leonard Monaco muses on the impossible things we expect from artists and geniuses — and shares the radical idea that, instead of the rare person "being" a genius, all of us "have" a genius. 
              </div>

              <a class="arlo-event-register" href="http://www.google.com/">Register</a>
              <span class="arlo-loadEventTemplateHiddenButtonContainer">
                <div data-id="eypvxryy" style="display: none;" class="arlo-subcontrol EventTemplate" id="subcontrol-eypvxryy">View Template Details</div>
              </span>

            </div>        
      </div>

  <script type="application/ld+json">{"@context":"http://schema.org","@type":"Event","name":"Your elusive creative genius","startDate":"2018-11-07T20:00:00.0000000-03:00","endDate":"2018-11-07T21:00:00.0000000-03:00","url":"https://s.codepen.io/course-template/?eventtemplate=2-your-elusive-creative-genius&amp;event=244","description":"Leonard Monaco muses on the impossible things we expect from artists and geniuses — and shares the radical idea that, instead of the rare person \"being\" a genius, all of us \"have\" a genius. ","offers":{"@type":"AggregateOffer","highPrice":450,"lowPrice":450,"price":450,"priceCurrency":"NZD","availability":"http://schema.org/InStock","url":"https://s.codepen.io/course-template/?eventtemplate=2-your-elusive-creative-genius&amp;event=244"},"location":{"@type":"Place","name":"","address":{"@type":"Text"}},"performer":[{"@type":"Person","name":"Asher Lopez","url":"https://s.codepen.io/presenter/?presenter=12-asher-lopez"},{"@type":"Person","name":"Leonard Monaco","url":"https://s.codepen.io/presenter/?presenter=13-leonard-monaco"}]}</script><script type="application/ld+json">{"@context":"http://schema.org","@type":"Course","name":"Your elusive creative genius","description":"Leonard Monaco muses on the impossible things we expect from artists and geniuses — and shares the radical idea that, instead of the rare person \"being\" a genius, all of us \"have\" a genius. "}</script></li><li class="arlo-event-listitem" id="view67">
    
      <div class="arlo-event-card">
    

          <div class="arlo-event-card-front">
            
            <div class="arlo-date">
              <div class="arlo-date-container arlo-text-color-contrast">
                <div class="arlo-start-date">
                  09
                </div>
                <div class="arlo-start-month">
                  Nov
                </div>
              </div>
            </div>
            
            <div class="arlo-event-image" style="background-image: url(&quot;http://media.istockphoto.com/photos/serious-strategising-picture-id505766677?k=6&amp;m=505766677&amp;s=170667a&amp;w=0&amp;h=nwfdHw-rix0l041wlJD3nOafZqT2wd3-bf5scAaiPfY=&quot;);">
            
            </div>

            <div class="arlo-detail">
              
              
              <div class="arlo-name arlo-text-color-contrast">
                Empowering your people
              </div>

              <div class="arlo-location arlo-text-color-contrast">
                Auckland
              </div>
            </div>

          </div>

            <div class="arlo-event-card-back">

              <div class="arlo-summary arlo-text-color-contrast">
                Online workshop empower your people using crowdsourcing to deliver a prioritised, peer validated list of solutions to business challenges, fast!
              </div>

              <a class="arlo-event-register arlo-waiting-list" href="https://websitetestdata.arlo.co/waiting-list?sid=f7ba801a4ee042359a64a7326c3081fa">Join waiting list</a>
              <span class="arlo-loadEventTemplateHiddenButtonContainer">
                <div data-id="e8ng4833" style="display: none;" class="arlo-subcontrol EventTemplate" id="subcontrol-e8ng4833">View Template Details</div>
              </span>

            </div>        
      </div>

  <script type="application/ld+json">{"@context":"http://schema.org","@type":"Event","name":"Empowering your people","startDate":"2018-11-09T09:00:00.0000000+13:00","endDate":"2018-11-09T11:00:00.0000000+13:00","url":"https://s.codepen.io/course-template/?eventtemplate=3-empowering-your-people&amp;event=52","description":"Online workshop empower your people using crowdsourcing to deliver a prioritised, peer validated list of solutions to business challenges, fast!","offers":{"@type":"AggregateOffer","highPrice":450,"lowPrice":450,"price":450,"priceCurrency":"NZD","availability":"http://schema.org/SoldOut","url":"https://s.codepen.io/course-template/?eventtemplate=3-empowering-your-people&amp;event=52"},"location":{"@type":"Place","name":"SkyCity Auckland","geo":{"@type":"GeoCoordinates","latitude":-36.848255,"longitude":174.762621},"url":"https://s.codepen.io/venue/?venue=9-auckland","address":{"@type":"PostalAddress","streetAddress":"Victoria Street &amp; Federal Street","addressLocality":"Auckland","postalCode":"1010","addressCountry":"New Zealand"}},"performer":[{"@type":"Person","name":"Asher Lopez","url":"https://s.codepen.io/presenter/?presenter=12-asher-lopez"},{"@type":"Person","name":"Leonard Monaco","url":"https://s.codepen.io/presenter/?presenter=13-leonard-monaco"},{"@type":"Person","name":"Diana Quin","url":"https://s.codepen.io/presenter/?presenter=14-diana-quin"}]}</script><script type="application/ld+json">{"@context":"http://schema.org","@type":"Course","name":"Empowering your people","description":"Online workshop empower your people using crowdsourcing to deliver a prioritised, peer validated list of solutions to business challenges, fast!"}</script></li><li class="arlo-event-listitem" id="view69">
    
      <div class="arlo-event-card">
    

          <div class="arlo-event-card-front">
            
            <div class="arlo-date">
              <div class="arlo-date-container arlo-text-color-contrast">
                <div class="arlo-start-date">
                  12
                </div>
                <div class="arlo-start-month">
                  Nov
                </div>
              </div>
            </div>
            
            <div class="arlo-event-image" style="background-image: url(&quot;http://media.istockphoto.com/photos/get-going-get-growing-picture-id628265890?k=6&amp;m=628265890&amp;s=170667a&amp;w=0&amp;h=R4AzTIGTudYjjiOC88ymgSFe3GNT8MEpAfSooNjurTw=&quot;);">
            
            </div>

            <div class="arlo-detail">
              
              
              <div class="arlo-name arlo-text-color-contrast">
                Business skills for new managers
              </div>

              <div class="arlo-location arlo-text-color-contrast">
                Sydney
              </div>
            </div>

          </div>

            <div class="arlo-event-card-back">

              <div class="arlo-summary arlo-text-color-contrast">
                Final step in becoming a certified Teamwork partner. Successful applicants will join our reseller network and gain access to joint branding initiatives.
              </div>

              <a class="arlo-event-register" href="https://websitetestdata.arlo.co/register?sgid=0649cdae99f14679acdfc0924e4d1951">Register</a>
              <span class="arlo-loadEventTemplateHiddenButtonContainer">
                <div data-id="dd7a43n2" style="display: none;" class="arlo-subcontrol EventTemplate" id="subcontrol-dd7a43n2">View Template Details</div>
              </span>

            </div>        
      </div>

  <script type="application/ld+json">{"@context":"http://schema.org","@type":"Event","name":"Business skills for new managers","startDate":"2018-11-12T09:00:00.0000000+11:00","endDate":"2018-11-12T16:00:00.0000000+11:00","url":"https://s.codepen.io/course-template/?eventtemplate=4-business-skills-for-new-managers&amp;event=55","description":"Final step in becoming a certified Teamwork partner. Successful applicants will join our reseller network and gain access to joint branding initiatives.","offers":{"@type":"AggregateOffer","highPrice":450,"lowPrice":450,"price":450,"priceCurrency":"NZD","availability":"http://schema.org/InStock","url":"https://s.codepen.io/course-template/?eventtemplate=4-business-skills-for-new-managers&amp;event=55"},"location":{"@type":"Place","name":"Sydney Opera House","geo":{"@type":"GeoCoordinates","latitude":-33.857123,"longitude":151.2149798},"url":"https://s.codepen.io/venue/?venue=12-sydney","address":{"@type":"PostalAddress","streetAddress":"Bennelong Point","addressLocality":"Sydney","postalCode":"2000","addressCountry":"Australia"}},"performer":[{"@type":"Person","name":"Cora Dobbs","url":"https://s.codepen.io/presenter/?presenter=16-cora-dobbs"}]}</script><script type="application/ld+json">{"@context":"http://schema.org","@type":"Course","name":"Business skills for new managers","description":"Final step in becoming a certified Teamwork partner. Successful applicants will join our reseller network and gain access to joint branding initiatives."}</script></li><li class="arlo-event-listitem" id="view71">
    
      <div class="arlo-event-card">
    

          <div class="arlo-event-card-front">
            
            <div class="arlo-date">
              <div class="arlo-date-container arlo-text-color-contrast">
                <div class="arlo-start-date">
                  14
                </div>
                <div class="arlo-start-month">
                  Nov
                </div>
              </div>
            </div>
            
            <div class="arlo-event-image" style="background-image: url(&quot;http://media.istockphoto.com/photos/wood-open-sign-board-hang-on-shop-wood-door-picture-id586731466?k=6&amp;m=586731466&amp;s=170667a&amp;w=0&amp;h=r0kACwrbT2IByUz-vndeoxI3CuYPf-J0nin0Yo_zutk=&quot;);">
            
            </div>

            <div class="arlo-detail">
              
              
              <div class="arlo-name arlo-text-color-contrast">
                写好商业计划书
              </div>

              <div class="arlo-location arlo-text-color-contrast">
                Canberra
              </div>
            </div>

          </div>

            <div class="arlo-event-card-back">

              <div class="arlo-summary arlo-text-color-contrast">
                Interactive and engaging workshop to help you create a successful business plan for your business.
              </div>

              <a class="arlo-event-register" href="https://websitetestdata.arlo.co/register?sgid=43d8b634464a4d50b37d3544f3d95556">Register</a>
              <span class="arlo-loadEventTemplateHiddenButtonContainer">
                <div data-id="maqlgcdz" style="display: none;" class="arlo-subcontrol EventTemplate" id="subcontrol-maqlgcdz">View Template Details</div>
              </span>

            </div>        
      </div>

  <script type="application/ld+json">{"@context":"http://schema.org","@type":"Event","name":"写好商业计划书","startDate":"2018-11-14T07:30:00.0000000+11:00","endDate":"2018-11-22T22:00:00.0000000+11:00","url":"https://s.codepen.io/course-template/?eventtemplate=5-%E5%86%99%E5%A5%BD%E5%95%86%E4%B8%9A%E8%AE%A1%E5%88%92%E4%B9%A6&amp;event=245","description":"Interactive and engaging workshop to help you create a successful business plan for your business.","offers":{"@type":"AggregateOffer","highPrice":300,"lowPrice":200,"price":200,"priceCurrency":"NZD","availability":"http://schema.org/InStock","url":"https://s.codepen.io/course-template/?eventtemplate=5-%E5%86%99%E5%A5%BD%E5%95%86%E4%B8%9A%E8%AE%A1%E5%88%92%E4%B9%A6&amp;event=245"},"location":{"@type":"Place","name":"Novotel Canberra","geo":{"@type":"GeoCoordinates","latitude":-35.27799,"longitude":149.1289865},"url":"https://s.codepen.io/venue/?venue=14-canberra","address":{"@type":"PostalAddress","streetAddress":"65 Northbourne Ave","addressLocality":"Canberra","postalCode":"2601","addressCountry":"Australia"}},"performer":[{"@type":"Person","name":"Terry Quin","url":"https://s.codepen.io/presenter/?presenter=17-terry-quin"}]}</script><script type="application/ld+json">{"@context":"http://schema.org","@type":"Course","name":"写好商业计划书","description":"Interactive and engaging workshop to help you create a successful business plan for your business."}</script></li><li class="arlo-event-listitem" id="view73">
    
      <div class="arlo-event-card">
    

          <div class="arlo-event-card-front">
            
            <div class="arlo-date">
              <div class="arlo-date-container arlo-text-color-contrast">
                <div class="arlo-start-date">
                  23
                </div>
                <div class="arlo-start-month">
                  Nov
                </div>
              </div>
            </div>
            
            <div class="arlo-event-image" style="background-image: url(&quot;http://media.istockphoto.com/photos/proud-to-be-a-dressmaker-picture-id180719017?k=6&amp;m=180719017&amp;s=170667a&amp;w=0&amp;h=TXSvH-wyOPcda63iNMzHp5V6XALVtd6yo3dSQjHguQk=&quot;);">
            
            </div>

            <div class="arlo-detail">
              
              
              <div class="arlo-name arlo-text-color-contrast">
                Building your brand
              </div>

              <div class="arlo-location arlo-text-color-contrast">
                Melbourne
              </div>
            </div>

          </div>

            <div class="arlo-event-card-back">

              <div class="arlo-summary arlo-text-color-contrast">
                Provides an innovative strategy for increasing workforce engagement by preparing employees to manage their reputations, or “brand,” within the organization.
              </div>

              <a class="arlo-event-register" href="https://websitetestdata.arlo.co/register?sgid=df865b88946b48b3baeab396dcf197fb">Register</a>
              <span class="arlo-loadEventTemplateHiddenButtonContainer">
                <div data-id="rl82rmji" style="display: none;" class="arlo-subcontrol EventTemplate" id="subcontrol-rl82rmji">View Template Details</div>
              </span>

            </div>        
      </div>

  <script type="application/ld+json">{"@context":"http://schema.org","@type":"Event","name":"Building your brand","startDate":"2018-11-23T13:00:00.0000000+11:00","endDate":"2018-12-10T16:00:00.0000000+11:00","url":"https://s.codepen.io/course-template/?eventtemplate=6-building-your-brand&amp;event=246","description":"Provides an innovative strategy for increasing workforce engagement by preparing employees to manage their reputations, or “brand,” within the organization.","offers":{"@type":"AggregateOffer","highPrice":995,"lowPrice":775,"price":775,"priceCurrency":"NZD","availability":"http://schema.org/InStock","url":"https://s.codepen.io/course-template/?eventtemplate=6-building-your-brand&amp;event=246"},"location":{"@type":"Place","name":"Crown Melbourne","url":"https://s.codepen.io/venue/?venue=16-melbourne","address":{"@type":"PostalAddress","streetAddress":"8 Whiteman Street","addressLocality":"Melbourne","postalCode":"3006","addressCountry":"Australia"}},"performer":[{"@type":"Person","name":"Nancy Jones"}]}</script><script type="application/ld+json">{"@context":"http://schema.org","@type":"Course","name":"Building your brand","description":"Provides an innovative strategy for increasing workforce engagement by preparing employees to manage their reputations, or “brand,” within the organization."}</script></li><li class="arlo-event-listitem" id="view75">
    
      <div class="arlo-event-card">
    

          <div class="arlo-event-card-front">
            
            <div class="arlo-date">
              <div class="arlo-date-container arlo-text-color-contrast">
                <div class="arlo-start-date">
                  10
                </div>
                <div class="arlo-start-month">
                  Jan
                </div>
              </div>
            </div>
            
            <div class="arlo-event-image" style="background-image: url(&quot;http://media.istockphoto.com/photos/hand-writes-with-a-pen-in-a-notebook-picture-id481187762?k=6&amp;m=481187762&amp;s=170667a&amp;w=0&amp;h=8Xyh04ScckFFA8xK_dbupOrCQmciRuQLfOxll_rm8BU=&quot;);">
            
            </div>

            <div class="arlo-detail">
              
              
              <div class="arlo-name arlo-text-color-contrast">
                Teaching and Learning for Unit 4 - Promoting Children's Positive Behaviour, Level 4 Education Qualification
              </div>

              <div class="arlo-location arlo-text-color-contrast">
                Wellington
              </div>
            </div>

          </div>

            <div class="arlo-event-card-back">

              <div class="arlo-summary arlo-text-color-contrast">
                Partner enablement is a key component of our partner program. Our curriculum will train you and your staff to become Teamwork Certified Engineers, Certified Architects and Certified Sales Consultants.
              </div>

              <span class="arlo-event-register-info"><p>Registrations opening soon!&nbsp;<a style="font-size: 9pt;" href="http://www.google.com/">Find out more!</a></p></span>
              <span class="arlo-loadEventTemplateHiddenButtonContainer">
                <div data-id="gu45c6tr" style="display: none;" class="arlo-subcontrol EventTemplate" id="subcontrol-gu45c6tr">View Template Details</div>
              </span>

            </div>        
      </div>

  <script type="application/ld+json">{"@context":"http://schema.org","@type":"Event","name":"Teaching and Learning for Unit 4 - Promoting Children&#39;s Positive Behaviour, Level 4 Education Qualification","startDate":"2019-01-10T08:00:00.0000000+13:00","endDate":"2019-01-10T09:00:00.0000000+13:00","url":"https://s.codepen.io/course-template/?eventtemplate=8-teaching-and-learning-for-unit-4-promoting-childrens-positive-behaviour-level-4-education-qualification&amp;event=60","description":"Partner enablement is a key component of our partner program. Our curriculum will train you and your staff to become Teamwork Certified Engineers, Certified Architects and Certified Sales Consultants.","offers":{"@type":"AggregateOffer","highPrice":450,"lowPrice":450,"price":450,"priceCurrency":"NZD","availability":"http://schema.org/InStock","url":"https://s.codepen.io/course-template/?eventtemplate=8-teaching-and-learning-for-unit-4-promoting-childrens-positive-behaviour-level-4-education-qualification&amp;event=60"},"location":{"@type":"Place","name":"Wellington Town Hall","geo":{"@type":"GeoCoordinates","latitude":-41.2893299,"longitude":174.7774235},"url":"https://s.codepen.io/venue/?venue=13-wellington","address":{"@type":"PostalAddress","streetAddress":"109 Wakefield St","addressLocality":"Wellington","postalCode":"6011","addressCountry":"New Zealand"}},"performer":[{"@type":"Person","name":"Leonard Monaco","url":"https://s.codepen.io/presenter/?presenter=13-leonard-monaco"}]}</script><script type="application/ld+json">{"@context":"http://schema.org","@type":"Course","name":"Teaching and Learning for Unit 4 - Promoting Children&#39;s Positive Behaviour, Level 4 Education Qualification","description":"Partner enablement is a key component of our partner program. Our curriculum will train you and your staff to become Teamwork Certified Engineers, Certified Architects and Certified Sales Consultants."}</script></li><li class="arlo-event-listitem" id="view77">
    
      <div class="arlo-event-card">
    

          <div class="arlo-event-card-front">
            
            <div class="arlo-date">
              <div class="arlo-date-container arlo-text-color-contrast">
                <div class="arlo-start-date">
                  31
                </div>
                <div class="arlo-start-month">
                  Jan
                </div>
              </div>
            </div>
            
            <div class="arlo-event-image" style="background-image: url(&quot;http://media.istockphoto.com/photos/book-and-glass-loupe-picture-id133313561?k=6&amp;m=133313561&amp;s=170667a&amp;w=0&amp;h=eDSzDMt1NxT4m_wOeCiYOlTiOxXtWvxez_fHdZZeAVw=&quot;);">
            
            </div>

            <div class="arlo-detail">
              
              
              <div class="arlo-name arlo-text-color-contrast">
                Māori artefacts annual forum 
              </div>

              <div class="arlo-location arlo-text-color-contrast">
                Auckland
              </div>
            </div>

          </div>

            <div class="arlo-event-card-back">

              <div class="arlo-summary arlo-text-color-contrast">
                Provides an innovative strategy for increasing workforce engagement by preparing employees to manage their reputations, or “brand,” within the organization.
              </div>

              <a class="arlo-event-register" href="https://websitetestdata.arlo.co/register?sgid=5435744ffcd9427cb6b35603ff825687">Register</a>
              <span class="arlo-loadEventTemplateHiddenButtonContainer">
                <div data-id="3lyvvtey" style="display: none;" class="arlo-subcontrol EventTemplate" id="subcontrol-3lyvvtey">View Template Details</div>
              </span>

            </div>        
      </div>

  <script type="application/ld+json">{"@context":"http://schema.org","@type":"Event","name":"Māori artefacts annual forum ","startDate":"2019-01-31T09:30:00.0000000+13:00","endDate":"2019-02-19T16:00:00.0000000+13:00","url":"https://s.codepen.io/course-template/?eventtemplate=7-m%C4%81ori-artefacts-annual-forum&amp;event=595","description":"Provides an innovative strategy for increasing workforce engagement by preparing employees to manage their reputations, or “brand,” within the organization.","offers":{"@type":"AggregateOffer","highPrice":1200,"lowPrice":1000,"price":1000,"priceCurrency":"NZD","availability":"http://schema.org/InStock","url":"https://s.codepen.io/course-template/?eventtemplate=7-m%C4%81ori-artefacts-annual-forum&amp;event=595"},"location":{"@type":"Place","name":"","address":{"@type":"Text"}},"performer":[{"@type":"Person","name":"Cora Dobbs","url":"https://s.codepen.io/presenter/?presenter=16-cora-dobbs"},{"@type":"Person","name":"Charles Butler","url":"https://s.codepen.io/presenter/?presenter=19-charles-butler"},{"@type":"Person","name":"Ellen Forsberg","url":"https://s.codepen.io/presenter/?presenter=15-ellen-forsberg"}]}</script><script type="application/ld+json">{"@context":"http://schema.org","@type":"Course","name":"Māori artefacts annual forum ","description":"Provides an innovative strategy for increasing workforce engagement by preparing employees to manage their reputations, or “brand,” within the organization."}</script></li><li class="arlo-event-listitem" id="view79">
    
      <div class="arlo-event-card">
    

          <div class="arlo-event-card-front">
            
            <div class="arlo-date">
              <div class="arlo-date-container arlo-text-color-contrast">
                <div class="arlo-start-date">
                  15
                </div>
                <div class="arlo-start-month">
                  Feb
                </div>
              </div>
            </div>
            
            <div class="arlo-event-image" style="background-image: url(&quot;http://media.istockphoto.com/photos/putting-together-a-plan-picture-id524376782?k=6&amp;m=524376782&amp;s=170667a&amp;w=0&amp;h=gOoh9DrzUnVj9i6DJ4dJRh2qkINSBGgNPqf2WlhdW80=&quot;);">
            
            </div>

            <div class="arlo-detail">
              
                <div class="arlo-provider-name">
                  Provided by Rocket Labs
                </div>
              
              
              <div class="arlo-name arlo-text-color-contrast">
                How great PEOPLE inspire action
              </div>

              <div class="arlo-location arlo-text-color-contrast">
                New York
              </div>
            </div>

          </div>

            <div class="arlo-event-card-back">

              <div class="arlo-summary arlo-text-color-contrast">
                This example event template includes an extensive range of event configurations for testing purposes. The content you are reading is the plain text summary description field on the template.
              </div>

              <a class="arlo-event-register arlo-waiting-list" href="https://websitetestdata.arlo.co/waiting-list?sid=d60b1883772b43f78851d6fcfa1f51bd">Join waiting list</a>
              <span class="arlo-loadEventTemplateHiddenButtonContainer">
                <div data-id="2xjhl1j5" style="display: none;" class="arlo-subcontrol EventTemplate" id="subcontrol-2xjhl1j5">View Template Details</div>
              </span>

            </div>        
      </div>

  <script type="application/ld+json">{"@context":"http://schema.org","@type":"Event","name":"How great PEOPLE inspire action","startDate":"2019-02-15T08:00:00.0000000-05:00","endDate":"2019-02-27T17:00:00.0000000-05:00","url":"https://s.codepen.io/course-template/?eventtemplate=11-how-great-people-inspire-action&amp;event=580","description":"This example event template includes an extensive range of event configurations for testing purposes. The content you are reading is the plain text summary description field on the template.","offers":{"@type":"AggregateOffer","highPrice":545,"lowPrice":200,"price":200,"priceCurrency":"NZD","availability":"http://schema.org/SoldOut","url":"https://s.codepen.io/course-template/?eventtemplate=11-how-great-people-inspire-action&amp;event=580"},"location":{"@type":"Place","name":"To be advised - New York","geo":{"@type":"GeoCoordinates","latitude":40.7127837,"longitude":-74.0059413},"address":{"@type":"PostalAddress","addressLocality":"New York","addressCountry":"United States"}}}</script><script type="application/ld+json">{"@context":"http://schema.org","@type":"Course","name":"How great PEOPLE inspire action","description":"This example event template includes an extensive range of event configurations for testing purposes. The content you are reading is the plain text summary description field on the template."}</script></li><li class="arlo-event-listitem" id="view81">
    
      <div class="arlo-event-card">
    

          <div class="arlo-event-card-front">
            
            <div class="arlo-date">
              <div class="arlo-date-container arlo-text-color-contrast">
                <div class="arlo-start-date">
                  19
                </div>
                <div class="arlo-start-month">
                  Feb
                </div>
              </div>
            </div>
            
            <div class="arlo-event-image" style="background-image: url(&quot;http://media.istockphoto.com/photos/cycling-class-at-the-gym-picture-id596804694?k=6&amp;m=596804694&amp;s=170667a&amp;w=0&amp;h=p_-ZcRczh-n1ogNMQ6a8f0egej3AJG-32r3VNJekkCk=&quot;);">
            
            </div>

            <div class="arlo-detail">
              
              
              <div class="arlo-name arlo-text-color-contrast">
                Basic conference
              </div>

              <div class="arlo-location arlo-text-color-contrast">
                Sydney
              </div>
            </div>

          </div>

            <div class="arlo-event-card-back">

              <div class="arlo-summary arlo-text-color-contrast">
                An example of a simple conference with optional sessions and dinner.
              </div>

              <a class="arlo-event-register" href="https://websitetestdata.arlo.co/register?sgid=9bc4888a94df4745a16b57b3e252ade5">Register</a>
              <span class="arlo-loadEventTemplateHiddenButtonContainer">
                <div data-id="7lxdd54z" style="display: none;" class="arlo-subcontrol EventTemplate" id="subcontrol-7lxdd54z">View Template Details</div>
              </span>

            </div>        
      </div>

  <script type="application/ld+json">{"@context":"http://schema.org","@type":"Event","name":"Basic conference","startDate":"2019-02-19T09:00:00.0000000+11:00","endDate":"2019-02-19T17:00:00.0000000+11:00","url":"https://s.codepen.io/course-template/?eventtemplate=9-basic-conference&amp;event=253","description":"An example of a simple conference with optional sessions and dinner.","offers":{"@type":"AggregateOffer","highPrice":0,"lowPrice":0,"price":0,"priceCurrency":"NZD","availability":"http://schema.org/InStock","url":"https://s.codepen.io/course-template/?eventtemplate=9-basic-conference&amp;event=253"},"location":{"@type":"Place","name":"","address":{"@type":"Text"}},"performer":[{"@type":"Person","name":"Ellen Forsberg","url":"https://s.codepen.io/presenter/?presenter=15-ellen-forsberg"}]}</script><script type="application/ld+json">{"@context":"http://schema.org","@type":"Course","name":"Basic conference","description":"An example of a simple conference with optional sessions and dinner."}</script></li><li class="arlo-event-listitem" id="view83">
    
      <div class="arlo-event-card">
    

          <div class="arlo-event-card-front">
            
            <div class="arlo-date">
              <div class="arlo-date-container arlo-text-color-contrast">
                <div class="arlo-start-date">
                  28
                </div>
                <div class="arlo-start-month">
                  Mar
                </div>
              </div>
            </div>
            
            <div class="arlo-event-image" style="background-image: url(&quot;http://media.istockphoto.com/photos/rustic-wedding-bouquet-with-pink-roses-and-lisianthus-flowers-picture-id530922612?k=6&amp;m=530922612&amp;s=170667a&amp;w=0&amp;h=Qt66JfQjIGM-nGsGKf4vXiTpvknaD4wwNAwPbUgUBNQ=&quot;);">
            
            </div>

            <div class="arlo-detail">
              
              
              <div class="arlo-name arlo-text-color-contrast">
                Partner conference
              </div>

              <div class="arlo-location arlo-text-color-contrast">
                Sydney
              </div>
            </div>

          </div>

            <div class="arlo-event-card-back">

              <div class="arlo-summary arlo-text-color-contrast">
                Join us for our annual partner conference 2017 to learn more about our new services for this year.
              </div>

              <a class="arlo-event-register" href="https://websitetestdata.arlo.co/register?sgid=9049014232c64a5895a9dd7a9fdd0c7d">Register</a>
              <span class="arlo-loadEventTemplateHiddenButtonContainer">
                <div data-id="1kf4o26r" style="display: none;" class="arlo-subcontrol EventTemplate" id="subcontrol-1kf4o26r">View Template Details</div>
              </span>

            </div>        
      </div>

  <script type="application/ld+json">{"@context":"http://schema.org","@type":"Event","name":"Partner conference","startDate":"2019-03-28T09:00:00.0000000+11:00","endDate":"2019-03-29T11:00:00.0000000+11:00","url":"https://s.codepen.io/course-template/?eventtemplate=176-partner-conference&amp;event=257","description":"Join us for our annual partner conference 2017 to learn more about our new services for this year.","offers":{"@type":"AggregateOffer","highPrice":450,"lowPrice":200,"price":200,"priceCurrency":"NZD","availability":"http://schema.org/InStock","url":"https://s.codepen.io/course-template/?eventtemplate=176-partner-conference&amp;event=257"},"location":{"@type":"Place","name":"","address":{"@type":"Text"}},"performer":[{"@type":"Person","name":"Cora Dobbs","url":"https://s.codepen.io/presenter/?presenter=16-cora-dobbs"},{"@type":"Person","name":"Asher Lopez","url":"https://s.codepen.io/presenter/?presenter=12-asher-lopez"},{"@type":"Person","name":"Charles Butler","url":"https://s.codepen.io/presenter/?presenter=19-charles-butler"}]}</script><script type="application/ld+json">{"@context":"http://schema.org","@type":"Course","name":"Partner conference","description":"Join us for our annual partner conference 2017 to learn more about our new services for this year."}</script></li><li class="arlo-event-listitem" id="view85">
    
      <div class="arlo-event-card">
    

          <div class="arlo-event-card-front">
            
            <div class="arlo-date">
              <div class="arlo-date-container arlo-text-color-contrast">
                <div class="arlo-start-date">
                  30
                </div>
                <div class="arlo-start-month">
                  Mar
                </div>
              </div>
            </div>
            
            <div class="arlo-event-image" style="background-image: url(&quot;http://media.istockphoto.com/photos/traveler-looks-at-landscape-picture-id625752272?k=6&amp;m=625752272&amp;s=170667a&amp;w=0&amp;h=EKHIB5vuXUhU5onmHAywFGGdu4DBebpH7WjfW85am6M=&quot;);">
            
            </div>

            <div class="arlo-detail">
              
              
              <div class="arlo-name arlo-text-color-contrast">
                External business relations
              </div>

              <div class="arlo-location arlo-text-color-contrast">
                Auckland
              </div>
            </div>

          </div>

            <div class="arlo-event-card-back">

              <div class="arlo-summary arlo-text-color-contrast">
                Interactive and engaging workshop to help you create successful business relations with external parties.
              </div>

              <a class="arlo-event-register" href="https://websitetestdata.arlo.co/register?sgid=d91b20fb58d44996b5338a6fc8e2f102">Register</a>
              <span class="arlo-loadEventTemplateHiddenButtonContainer">
                <div data-id="nzaxohqz" style="display: none;" class="arlo-subcontrol EventTemplate" id="subcontrol-nzaxohqz">View Template Details</div>
              </span>

            </div>        
      </div>

  <script type="application/ld+json">{"@context":"http://schema.org","@type":"Event","name":"External business relations","startDate":"2019-03-30T09:00:00.0000000+13:00","endDate":"2019-03-30T11:00:00.0000000+13:00","url":"https://s.codepen.io/course-template/?eventtemplate=395-external-business-relations&amp;event=601","description":"Interactive and engaging workshop to help you create successful business relations with external parties.","offers":{"@type":"AggregateOffer","highPrice":300,"lowPrice":300,"price":300,"priceCurrency":"NZD","availability":"http://schema.org/InStock","url":"https://s.codepen.io/course-template/?eventtemplate=395-external-business-relations&amp;event=601"},"location":{"@type":"Place","name":"SkyCity Auckland","geo":{"@type":"GeoCoordinates","latitude":-36.848255,"longitude":174.762621},"url":"https://s.codepen.io/venue/?venue=9-auckland","address":{"@type":"PostalAddress","streetAddress":"Victoria Street &amp; Federal Street","addressLocality":"Auckland","postalCode":"1010","addressCountry":"New Zealand"}},"performer":[{"@type":"Person","name":"Lopez Lopez"}]}</script><script type="application/ld+json">{"@context":"http://schema.org","@type":"Course","name":"External business relations","description":"Interactive and engaging workshop to help you create successful business relations with external parties."}</script></li><div class="arlo-show-more-container"><div class="arlo-show-more arlo-bg-color-primary arlo-text-color-contrast" style="text-align: center;">Show More</div></div></ul></div>
  <div class="resize-sensor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; z-index: -1; visibility: hidden;"><div class="resize-sensor-expand" style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;"><div style="position: absolute; left: 0px; top: 0px; transition: all 0s ease 0s; width: 1150px; height: 1807px;"></div></div><div class="resize-sensor-shrink" style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;"><div style="position: absolute; left: 0; top: 0; transition: 0s; width: 200%; height: 200%"></div></div></div></div>


  <!-- Dependencies -->
<script>(function ($, ElementQueries) {
  document.addEventListener("arlojscontrolsloaded", function () {
    var platformID = "websitetestdata.arlo.co"; // Change platformID to point at your own account

    var filter = {
      moduleType: "Filters",
      targetElement: "#filters",
      template: "#filter-template",
      filterControlId: 1 };


    var eventList = {
      moduleType: "UpcomingEvents",
      targetElement: "#upcoming-events",
      template: "#upcoming-events-template",
      maxCount: 12,
      filterControlId: 1,
      includeLoadMoreButton: true,
      loadMoreButtonText: "Show More",
      includeArloLink: false,
      smartDateFormats: {
        startDay: "DD" },

      customUrls: {
        eventtemplate: "/course-template/",
        venue: "/venue/",
        presenter: "/presenter/" },

      callbacks: {
        onShow: eventListOnShowCallback } };



    var app = new window.ArloWebControls();

    app.start({
      platformID: platformID,
      showDevErrors: false,
      modules: [eventList, filter] });


    /* ----- Callback function ----- */

    // "OnShow" callback
    function eventListOnShowCallback(getEventListItemsFunction) {
      var listItems = getEventListItemsFunction();
      var imageArr = ["http://media.istockphoto.com/photos/designer-drawing-website-ux-app-development-picture-id628609112?k=6&m=628609112&s=170667a&w=0&h=bVSiVtnnfHLHX4_yr6List1__XqvL3fySYvD08_wkZQ=",
      "http://media.istockphoto.com/photos/checking-new-menu-picture-id503492356?k=6&m=503492356&s=170667a&w=0&h=SWTRi7aE1hQ4jOFJa7D6zqOc4IpkQNu2xnm7-tV6cEE=",
      "http://media.istockphoto.com/photos/serious-strategising-picture-id505766677?k=6&m=505766677&s=170667a&w=0&h=nwfdHw-rix0l041wlJD3nOafZqT2wd3-bf5scAaiPfY=",
      "http://media.istockphoto.com/photos/get-going-get-growing-picture-id628265890?k=6&m=628265890&s=170667a&w=0&h=R4AzTIGTudYjjiOC88ymgSFe3GNT8MEpAfSooNjurTw=",
      "http://media.istockphoto.com/photos/wood-open-sign-board-hang-on-shop-wood-door-picture-id586731466?k=6&m=586731466&s=170667a&w=0&h=r0kACwrbT2IByUz-vndeoxI3CuYPf-J0nin0Yo_zutk=",
      "http://media.istockphoto.com/photos/proud-to-be-a-dressmaker-picture-id180719017?k=6&m=180719017&s=170667a&w=0&h=TXSvH-wyOPcda63iNMzHp5V6XALVtd6yo3dSQjHguQk=",
      "http://media.istockphoto.com/photos/hand-writes-with-a-pen-in-a-notebook-picture-id481187762?k=6&m=481187762&s=170667a&w=0&h=8Xyh04ScckFFA8xK_dbupOrCQmciRuQLfOxll_rm8BU=",
      "http://media.istockphoto.com/photos/book-and-glass-loupe-picture-id133313561?k=6&m=133313561&s=170667a&w=0&h=eDSzDMt1NxT4m_wOeCiYOlTiOxXtWvxez_fHdZZeAVw=",
      "http://media.istockphoto.com/photos/putting-together-a-plan-picture-id524376782?k=6&m=524376782&s=170667a&w=0&h=gOoh9DrzUnVj9i6DJ4dJRh2qkINSBGgNPqf2WlhdW80=",
      "http://media.istockphoto.com/photos/cycling-class-at-the-gym-picture-id596804694?k=6&m=596804694&s=170667a&w=0&h=p_-ZcRczh-n1ogNMQ6a8f0egej3AJG-32r3VNJekkCk=",
      "http://media.istockphoto.com/photos/rustic-wedding-bouquet-with-pink-roses-and-lisianthus-flowers-picture-id530922612?k=6&m=530922612&s=170667a&w=0&h=Qt66JfQjIGM-nGsGKf4vXiTpvknaD4wwNAwPbUgUBNQ=",
      "http://media.istockphoto.com/photos/traveler-looks-at-landscape-picture-id625752272?k=6&m=625752272&s=170667a&w=0&h=EKHIB5vuXUhU5onmHAywFGGdu4DBebpH7WjfW85am6M=",
      "http://media.istockphoto.com/photos/white-flower-growing-on-crack-street-soft-focus-picture-id521033980?k=6&m=521033980&s=170667a&w=0&h=iisBcr4jJvJy8K-KP6fAW9T75_zULRv2CWUHxPzb040="];

      var cardImages = $('.arlo-event-image');
      var cardSummary = $('.arlo-summary');
      var strMaxLength = 350;

      $.each(cardImages, function (index, ele) {
        $(ele).css('background-image', 'url(' + imageArr[index % imageArr.length] + ')');
      });

      $.each(cardSummary, function (index, ele) {
        var str = $(ele).text();
        $(ele).text(strChopper(str));
      });

      function strChopper(str) {
        if (str.length > strMaxLength) {
          str = str.substring(0, strMaxLength) + '...';
        }
        return str;
      }

      ElementQueries.init();

      // Hide timezone selector if there are no online events
      if ($(".arlo-online").length < 1) {
        $(".arlo-timezone-select").hide();
      } else {
        $(".arlo-timezone-select").show();
        $(".arlo-timezone-select").parent().css("float", "right");
      }

      // Set up tooltips
      $.each(listItems, function (index, listItem) {
        var tooltipElement = $(listItem).find('[data-toggle="tooltip"]')[0];
        if (tooltipElement) {
          var toolTipContent = $(listItem).find(".tooltipcontent")[0];
          if (toolTipContent) {
            $(tooltipElement).attr(
            "data-original-title",
            $(toolTipContent).html());

            $(tooltipElement).tooltip();
          }
        }
      });
    }
  });

  window.locationfiltertoggle = function (filter, $) {
    //jshint unused:false
    window.ElementQueries.init();
  };

  window.updateTemplateTagNames = function (filterModel, $) {
    var deleteFilterIndexes = [];
    $.each(filterModel.attributes.Values, function (index, filterValue) {
      switch (filterValue.Label) {
        case "Web_Public":
          filterValue.Label = "Public";
          break;
        case "Web_LiveOnline":
          filterValue.Label = "Live Online";
          break;
        case "Web_PrivateOnsite":
          filterValue.Label = "Private Onsite";
          break;
        case "Web_SelfpacedOnline":
          filterValue.Label = "Self Paced Online";
          break;
        default:
          deleteFilterIndexes.push(index);}

    });

    $.each(deleteFilterIndexes, function (index, value) {
      filterModel.attributes.Values.splice(value - index, 1);
    });

    $("#arlo-filter-toggle").click(function () {
      $(this).parent().toggleClass("arlo-show-filter");
    });
  };
})(jQuery, window.ElementQueries);
//# sourceURL=pen.js
</script>
</body></html>