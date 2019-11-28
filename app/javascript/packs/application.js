import "bootstrap";
import { initDisplayCharShowOnClick } from '../pages/bible';
import { initMoodBoard } from '../components/mooditem';
import { TextSave } from '../components/text_save';
import { StickyToolbar } from '../components/sticky_toolbar'
import { sortable } from '../components/dragdrop';
import Rails from '@rails/ujs';

require("trix")
require("@rails/actiontext")

Rails.start();

initDisplayCharShowOnClick();
initMoodBoard();
TextSave();
StickyToolbar();
sortable();

