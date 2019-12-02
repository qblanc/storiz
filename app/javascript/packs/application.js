import "bootstrap";
import { initDisplayCharShowOnClick } from '../pages/bible';
import { resizedragdrop } from '../components/mooditemv2';
import { TextSave } from '../components/text_save';
import { StickyToolbar } from '../components/sticky_toolbar'
import { initSortable } from '../components/dragdrop';
import { showDetailsOnClickSceneBible } from '../components/scene_bible';
import Rails from '@rails/ujs';
import $ from 'jquery';

window.jQuery = $;
window.$ = $;

require("trix")
require("@rails/actiontext")

Rails.start();

if (document.querySelector('#char-show')) {
  initDisplayCharShowOnClick();
}

if (document.querySelector('#scenes-show')) {
  showDetailsOnClickSceneBible();
}


if (document.querySelector('.moodimages')) {
  resizedragdrop();
};

if (document.querySelector('.editor')) {
  TextSave();
};

if (document.querySelector('.editor')) {
StickyToolbar();
};

if (document.querySelector('.index-list')) {
initSortable();
};
