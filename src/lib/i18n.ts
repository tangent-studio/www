// Simple translation helper
import enTranslations from '../../public/locales/en/common.json';
import frTranslations from '../../public/locales/fr/common.json';

type TranslationKey = string;

const translations = {
  en: enTranslations,
  fr: frTranslations
};

export function t(key: TranslationKey, lang: 'en' | 'fr' = 'en'): string {
  const keys = key.split('.');
  let value: any = translations[lang];
  
  for (const k of keys) {
    if (value && typeof value === 'object' && k in value) {
      value = value[k];
    } else {
      return key; // Return key if translation not found
    }
  }
  
  return typeof value === 'string' ? value : key;
}
