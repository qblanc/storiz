import "bootstrap";
import { initDisplayCharShowOnClick } from '../pages/bible';
import { resizedragdrop } from '../components/mooditemv2';
import { MoodModal } from '../components/moodmodal';
import { TextSave } from '../components/text_save';
import { StickyToolbar } from '../components/sticky_toolbar'
import { initSortable } from '../components/dragdrop';
import { initScroll } from '../components/bannerscroll'
import { showDetailsOnClickSceneBible } from '../components/scene_bible';
import { initBoxSlide } from '../components/projectsbox';
import { addActifClassToSceneList } from '../components/scene_add_actif_class';
import Rails from '@rails/ujs';
import $ from 'jquery';
// import { A } from '../projects/new_project';

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

if (document.querySelector('#storiz-club')) {
  initScroll();
  initBoxSlide();
}

if (document.querySelector('.moodimages')) {
  resizedragdrop();
  MoodModal();

};

if (document.querySelector('.editor')) {
    TextSave();
};

if (document.querySelector('.editor')) {
StickyToolbar();
};

if (document.querySelector('.index-list')) {
  addActifClassToSceneList();
  initSortable();
};
