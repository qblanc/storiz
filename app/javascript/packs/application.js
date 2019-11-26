import "bootstrap";
import { initDisplayCharShowOnClick } from '../pages/bible';
import { TextSave } from '../components/text_save';
import Rails from '@rails/ujs';
Rails.start();

initDisplayCharShowOnClick();
TextSave();

require("trix")
require("@rails/actiontext")
