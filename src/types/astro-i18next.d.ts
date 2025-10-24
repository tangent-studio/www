declare module "astro-i18next" {
  export function localizePath(pathname?: string, locale?: string | null, base?: string): string;
  export function detectLocaleFromPath(pathname?: string): string;
}
