import "bootstrap";
import { initDisplayCharShowOnClick } from '../pages/bible';
import { initMoodBoard } from '../components/mooditem';
import { resizedragdrop } from '../components/mooditemv2';
import { TextSave } from '../components/text_save';
import { StickyToolbar } from '../components/sticky_toolbar'
import Rails from '@rails/ujs';
import $ from 'jquery';

window.jQuery = $;
window.$ = $;

require("trix")
require("@rails/actiontext")

Rails.start();

initDisplayCharShowOnClick();
// initMoodBoard();
resizedragdrop();
TextSave();
StickyToolbar();


