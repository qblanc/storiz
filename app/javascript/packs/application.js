import "bootstrap";
import { initDisplayCharShowOnClick } from '../pages/bible';
import { initMoodBoard } from '../pages/mood';
import { TextSave } from '../components/text_save';
import Rails from '@rails/ujs';

Rails.start();

initDisplayCharShowOnClick();
initMoodBoard();
TextSave();

require("trix")
require("@rails/actiontext")
