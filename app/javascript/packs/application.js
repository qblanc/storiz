import "bootstrap";
import { initDisplayCharShowOnClick } from '../pages/bible';
import { initMoodBoard } from '../components/mooditem';
import { TextSave } from '../components/text_save';
import { StickyToolbar } from '../components/sticky_toolbar'
import { initSortable } from '../components/dragdrop';
import Rails from '@rails/ujs';

require("trix")
require("@rails/actiontext")

Rails.start();

if (document.querySelector('#char-show')) {
  initDisplayCharShowOnClick();
}

initMoodBoard();
TextSave();
StickyToolbar();

if (document.querySelector('.index-list')) {
initSortable();
};
