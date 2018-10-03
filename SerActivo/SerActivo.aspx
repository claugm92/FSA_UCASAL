<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SerActivo.aspx.cs" Inherits="SerActivo" %>

<!DOCTYPE html>
<!--  -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Fundación Ser Activo</title>

<!-- Actividades -->
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

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <!-- Optional Bootstrap theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
    <!-- StyleSheet carrusel -->
    <link href="estilos/StyleW3.css" rel="stylesheet" />

    <style>
        html, body, h1, h2, h3, h4 {
            font-family: "Lato", sans-serif
        }

        .mySlides {
            display: none
        }

        .w3-tag, .fa {
            cursor: pointer
        }

        .w3-tag {
            height: 15px;
            width: 15px;
            padding: 0;
            margin-top: 6px
        }
    </style>

    <!-- Style slider-->
	<style type="text/css">
	#rt-showcase.slider-container { background: #F5F6F8; }
	.slider-container {
	padding-top: 20px;
	}
	.slider-container .csslider1 {
	position: relative;
	display: block;
	margin: 0 auto !important;
	}
	</style>

    
    <style type="text/css">
        #rt-showcase.slider-container {
            background: #F5F6F8;
        }

        .slider-container {
            padding-top: 20px;
        }

            .slider-container .csslider1 {
                position: relative;
                display: block;
                margin: 0 auto !important;
            }
    </style>

</head>
<!-- Color de fondo -->
<body class="w3-light-grey">    
    <!-- Navbar (En la parte superior) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-card" id="myNavbar">
    <a href="http://www.fundacionseractivo.org.ar/" class="w3-bar-item w3-button w3-wide">Ser Activo</a>
    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small">
                <a href="#" class="w3-bar-item w3-button w3-wide">Inicio</a>
                <a href="#noticias" class="w3-bar-item w3-button w3-wide">Noticias</a>
                <a href="#actividades" class="w3-bar-item w3-button w3-wide">Actividades</a>
                <a href="#contact" class="w3-bar-item w3-button w3-wide">Contactanos</a>
    </div>
    <!-- Hide right-floated links on small screens and replace them with a menu icon -->

    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
      <i class="fa fa-bars"></i>
    </a>
  </div>
</div>

<!-- Sidebar on small screens when clicking the menu icon -->
<nav class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large" style="display:none" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>
  <a href="#" class="w3-bar-item w3-button w3-wide">Inicio</a>
  <a href="#noticias" class="w3-bar-item w3-button w3-wide">Noticias</a>
  <a href="#actividades" class="w3-bar-item w3-button w3-wide">Actividades</a>
  <a href="#contact" class="w3-bar-item w3-button w3-wide">Contactanos</a>
</nav>
    <!-- Formulario principal -->
    <form id="form1" runat="server">
        <!-- Carrusel de noticias principal -->
        <!-- Slideshow -->


            


        <div class="w3-container">

            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <%-- Indicators--%>
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="5"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <asp:Repeater ID="rptrImages" runat="server">
                        <ItemTemplate>
                            <div class="item <%#GetActiveClass(Container.ItemIndex) %>">
                                <!-- Post-->
                                
                                <div class="post-module">
                                    <!-- Thumbnail-->
                                    <img src="Images/<%#Eval("nombre") %><%#Eval("Extension") %>" alt="<%#Eval("nombre") %>" alt="Girl Hat" style="width: 100%" class="w3-padding-16"/>
       
                                    <!-- Post Content-->
                                    <div class="post-content">
                                        <div class="category">Photos</div>
                                        <h1 class="title">
                                            <asp:Label runat="server" ID="Label1" Text='<%# Eval("titulo_nov") %>' Font-Bold="True" Font-Size="X-Large" /></h1>
                                        <h2 class="sub_title">
                                            <asp:Label runat="server" ID="Label2" Text='<%# Eval("copete_nov") %>' /></h2>
                                        <div class="category"><asp:Label runat="server" ID="Label6" Text='<%# Eval("categoria") %>' /></div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>



    <!-- w3-content defines a container for fixed size centered content, 
    and is wrapped around the whole page content, except for the footer in this example -->
        <div class="w3-content" style="max-width: 1400px">
            <!-- Grid -->
            <div class="w3-row">
                <div class="w3-center w3-padding-64" id="noticias">
                    <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">Noticias</span>
                </div>
                <!-- NOTICIAS -->
                <div class="w3-col l8 s12">
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <!-- Blog entry -->
                            <div class="w3-container w3-white w3-margin w3-padding-large">
                                <div class="w3-justify">
                                    <h3><asp:Label runat="server" ID="Label1" Text='<%# Eval("titulo_not") %>' /></h3>
                                    <div class="w3-right">
                                    <button class="w3-button w3-black" onclick="myFunction('demo1')" id="myBtn"><b><asp:Label runat="server" ID="Label7" Text='<%# Eval("categoria") %>' /></b></button></p>
                                    </div>
                                    <h5><asp:Label class="sub_title" runat="server" ID="Label3" Text='<%# Eval("copete_not") %>' /></h2>
                                        <span class="w3-opacity"><asp:Label runat="server" ID="Label5" Text='<%# Eval("fecha_not") %>' /></span></h5>
                                </div>

                                <div class="w3-justify">
                                    <img src="Images/<%#Eval("nombre") %><%#Eval("Extension") %>" alt="<%#Eval("nombre") %>" alt="Girl Hat" style="width: 100%" class="w3-padding-16"/>
                                    <div class="w3-hover-black"><asp:Label runat="server" ID="Label6" Text='<%# Eval("categoria") %>' /></div>
                                    <p>
                                       <asp:Label runat="server" ID="Label4" Text='<%# Eval("cuerpo_not") %>' />
                                    
                                    <p class="w3-left">
                                        <button class="w3-button w3-white w3-border" onclick="likeFunction(this)"><b><i class="fa fa-thumbs-up"></i>Like</b></button></p>
                                    <p class="w3-right">
                                        
                                    <p class="w3-clear"></p>
                                    <div class="w3-row w3-margin-bottom" id="demo1" style="display: none">
                                        <hr>
                                        <div class="w3-col l2 m3">
                                            <img src="/w3images/avatar_smoke.jpg" style="width: 90px;">
                                        </div>
                                        <div class="w3-col l10 m9">
                                            <h4>George <span class="w3-opacity w3-medium">May 3, 2015, 6:32 PM</span></h4>
                                            <p>Great blog post! Following</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>


                <!-- INTRODUCCION menu -->
                <div class="w3-col l4">


                    <!-- Aplicaciones -->
                    <div class="w3-card w3-margin">
                        <div class="w3-container w3-padding">
                            <h4>Mira nuestras aplicaciones</h4>
                        </div>
                        <ul class="w3-ul w3-hoverable w3-white">
                            <li class="w3-padding-16">
                                <img src="./images/medicamed.png" alt="Image" class="w3-left w3-margin-right" style="width: 50px" />
                                <span class="w3-large">Medicamed</span><br />
                                <span>Una excelente aplicacion que le recuerda cuando debe que tomar su medicamento.</span>
                            </li>
                            <li class="w3-padding-16">
                                <img src="./images/entrena_mente.png" alt="Image" class="w3-left w3-margin-right" style="width: 50px" />
                                <span class="w3-large">Entrena Mente</span><br />
                                <span>Un excelente juego que te ayudara a agilizar tu mente!</span>
                            </li>
                            <li class="w3-padding-16">
                                <img src="./images/ser_activo.png" alt="Image" class="w3-left w3-margin-right" style="width: 50px">
                                <span class="w3-large">SerActivo</span><br />
                                <span>Nuestra aplicación oficial, desde ella podrás acceder a todo el contenido desde tu telefono móvil</span>
                            </li>
                            <li class="w3-padding-16 w3-hide-medium w3-hide-small">
                                <img src="./images/desafiame.jpg" alt="Image" class="w3-left w3-margin-right" style="width: 50px" />
                                <span class="w3-large">Desafiame</span><br />
                                <span>La aplicacion que te desafia?</span>
                            </li>
                        </ul>
                    </div>
                    <hr />

                    <!-- Labels / tags -->
                    <div class="w3-card w3-margin">
                        <div class="w3-container w3-padding">
                            <h4>Tags</h4>
                        </div>
                        <div class="w3-container w3-white">
                            <p>
                                <span class="w3-tag w3-black w3-margin-bottom">Travel</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">New York</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">London</span>
                                <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">IKEA</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">NORWAY</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">DIY</span>
                                <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Ideas</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Baby</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Family</span>
                                <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">News</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Clothing</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Shopping</span>
                                <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Sports</span> <span class="w3-tag w3-light-grey w3-small w3-margin-bottom">Games</span>
                            </p>
                        </div>
                    </div>
                    <!-- END Introduction Menu -->
                </div>
                <!-- END GRID -->
            </div>
            <br />
            <!-- END w3-content -->
        </div>



        <!-- Grid de actividades -->
        <div class="w3-row-padding" id="actividades">
            <div class="w3-center w3-padding-64">
                <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">Actividades</span>
            </div>
        </div>
        <!-- Grid -->
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
    <div id="upcoming-events"><ul class="arlo-event-list" min-width="976px 1083px" style="position: relative;">
        <div class="resize-sensor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; z-index: -1; visibility: hidden;">
            <div class="resize-sensor-expand" style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;">
                <div style="position: absolute; left: 0px; top: 0px; transition: all 0s ease 0s; width: 1150px; height: 1727px;"></div></div>
            <div class="resize-sensor-shrink" style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; z-index: -1; visibility: hidden;">
                <div style="position: absolute; left: 0; top: 0; transition: 0s; width: 200%; height: 200%"></div>
                </div>
        </div>


        <asp:Repeater ID="Repeater3" runat="server">
            <ItemTemplate>
                <script type="application/ld+json">{"@type":"ItemList","itemListElement":[{"@type":"ListItem","position":1,"url":"https://s.codepen.io/course-template/?eventtemplate=1-plan-your-next-trip-to-the-moon&event=532"},{"@type":"ListItem","position":2,"url":"https://s.codepen.io/course-template/?eventtemplate=2-your-elusive-creative-genius&event=244"},{"@type":"ListItem","position":3,"url":"https://s.codepen.io/course-template/?eventtemplate=3-empowering-your-people&event=52"},{"@type":"ListItem","position":4,"url":"https://s.codepen.io/course-template/?eventtemplate=4-business-skills-for-new-managers&event=55"},{"@type":"ListItem","position":5,"url":"https://s.codepen.io/course-template/?eventtemplate=5-%E5%86%99%E5%A5%BD%E5%95%86%E4%B8%9A%E8%AE%A1%E5%88%92%E4%B9%A6&event=245"},{"@type":"ListItem","position":6,"url":"https://s.codepen.io/course-template/?eventtemplate=6-building-your-brand&event=246"},{"@type":"ListItem","position":7,"url":"https://s.codepen.io/course-template/?eventtemplate=8-teaching-and-learning-for-unit-4-promoting-childrens-positive-behaviour-level-4-education-qualification&event=60"},{"@type":"ListItem","position":8,"url":"https://s.codepen.io/course-template/?eventtemplate=7-m%C4%81ori-artefacts-annual-forum&event=595"},{"@type":"ListItem","position":9,"url":"https://s.codepen.io/course-template/?eventtemplate=11-how-great-people-inspire-action&event=580"},{"@type":"ListItem","position":10,"url":"https://s.codepen.io/course-template/?eventtemplate=9-basic-conference&event=253"},{"@type":"ListItem","position":11,"url":"https://s.codepen.io/course-template/?eventtemplate=176-partner-conference&event=257"},{"@type":"ListItem","position":12,"url":"https://s.codepen.io/course-template/?eventtemplate=395-external-business-relations&event=601"}]}</script>
                <li class="arlo-event-listitem">
                    <div class="arlo-event-card arlo-online-card">
                        <div class="arlo-event-card-front">
                            <div class="arlo-date">
                                <div class="arlo-date-container arlo-text-color-contrast">
                                    <div class="arlo-start-date">
                                        <asp:Label runat="server" ID="Label5" Text='<%# Eval("fecha_act") %>' />
                                    </div>
                                    <div class="arlo-start-month">
                                        Nov
                                    </div>
                                </div>
                            </div>
                            <img class="arlo-event-image" src="Images/<%#Eval("nombre") %><%#Eval("Extension") %>" alt="<%#Eval("nombre") %>" />
                            <div class="arlo-detail">
                                <div class="arlo-provider-name">
                                    <asp:Label class="sub_title" runat="server" ID="Label3" Text='<%# Eval("subtitulo_act") %>' /></h2>
                                </div>
                                <div class="arlo-name arlo-text-color-contrast">
                                    <asp:Label runat="server" ID="Label1" Text='<%# Eval("titulo_act") %>' /></h1>
                                </div>
                                <div class="arlo-location arlo-text-color-contrast">
                                    <!-- subtitulo -->
                                    Online
                                </div>
                            </div>
                        </div>
                        <div class="arlo-event-card-back">
                            <div class="arlo-summary arlo-text-color-contrast">
                                <asp:Label runat="server" ID="Label4" Text='<%# Eval("cuerpo_act") %>' />
                            </div>
                            <a class="arlo-event-register" href="https://websitetestdata.arlo.co/register?sgid=2ddcd4cf35ac46d99423167e8e04fc90">Register</a>
                            <span class="arlo-loadEventTemplateHiddenButtonContainer">
                                <div data-id="2q13ihvd" style="display: none;" class="arlo-subcontrol EventTemplate" id="subcontrol-2q13ihvd">View Template Details</div>
                            </span>
                        </div>
                    </div>
            </ItemTemplate>
        </asp:Repeater>
</div>



        <!-- Content -->
        <div class="w3-content" style="max-width: 1100px; margin-top: 80px; margin-bottom: 80px">
            <!-- Contact -->
            <div class="w3-center w3-padding-64" id="contact">
                <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">Contactanos</span>
            </div>

            <form class="w3-container" action="/action_page.php" target="_blank">
                <div class="w3-section">
                    <label>Nombre</label>
                    <input class="w3-input w3-border w3-hover-border-black" style="width: 100%;" type="text" name="Name" required />
                </div>
                <div class="w3-section">
                    <label>Correo electrónico</label>
                    <input class="w3-input w3-border w3-hover-border-black" style="width: 100%;" type="text" name="Email" required />
                </div>
                <div class="w3-section">
                    <label>Asuntp</label>
                    <input class="w3-input w3-border w3-hover-border-black" style="width: 100%;" name="Subject" required />
                </div>
                <div class="w3-section">
                    <label>Cuerpo del mensaje</label>
                    <input class="w3-input w3-border w3-hover-border-black" style="width: 100%;" name="Message" required />
                </div>
                <button type="submit" class="w3-button w3-block w3-black">Enviar</button>
            </form>
        </div>





        <!-- Footer -->

        <footer class="w3-container w3-padding-32 w3-light-grey w3-center">
            <a href="#" class="w3-button w3-black w3-margin"><i class="fa fa-arrow-up w3-margin-right"></i>Volver arriba</a>
            <div class="w3-xlarge w3-section">
                <i class="fa fa-facebook-official w3-hover-opacity"></i>
                <i class="fa fa-instagram w3-hover-opacity"></i>
                <i class="fa fa-snapchat w3-hover-opacity"></i>
                <i class="fa fa-pinterest-p w3-hover-opacity"></i>
                <i class="fa fa-twitter w3-hover-opacity"></i>
                <i class="fa fa-linkedin w3-hover-opacity"></i>
            </div>
            <p>Powered by <a href="" title="CLAU (?" target="_blank" class="w3-hover-text-green">Clauditouu (?</a></p>
            <p><a href="Login.aspx" title="CLAU (?" target="_blank" class="w3-hover-text-green">Administrar</a></p>
            
        </footer>


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




<script>
function myMap()
{
  myCenter=new google.maps.LatLng(41.878114, -87.629798);
  var mapOptions= {
    center:myCenter,
    zoom:12, scrollwheel: false, draggable: false,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapOptions);

  var marker = new google.maps.Marker({
    position: myCenter,
  });
  marker.setMap(map);
}

// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}


// Toggle between showing and hiding the sidebar when clicking the menu icon
var mySidebar = document.getElementById("mySidebar");

function w3_open() {
    if (mySidebar.style.display === 'block') {
        mySidebar.style.display = 'none';
    } else {
        mySidebar.style.display = 'block';
    }
}

// Close the sidebar with the close button
function w3_close() {
    mySidebar.style.display = "none";
}
</script>
        <!-- Script Slideshow -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </form>
</body>

</html>




