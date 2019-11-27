import "bootstrap";
import { initDisplayCharShowOnClick } from '../pages/bible';
import { TextSave } from '../components/text_save';
import { StickyToolbar } from '../components/sticky_toolbar'
import Rails from '@rails/ujs';
Rails.start();

initDisplayCharShowOnClick();
TextSave();
StickyToolbar();

require("trix")
require("@rails/actiontext")
