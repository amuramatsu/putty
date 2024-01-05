#ifndef __IME_WRAP_H__
#define __IME_WRAP_H__ 1

BOOL	ime_wrap_init();
void	ime_wrap_term();

HIMC WINAPI ImmGetContext(HWND hwnd);
BOOL WINAPI ImmReleaseContext(HWND hwnd, HIMC imc);
BOOL WINAPI ImmGetOpenStatus(HIMC imc);
BOOL WINAPI ImmSetCompositionFontW(HIMC imc, LPLOGFONTW lf);
BOOL WINAPI ImmSetCompositionFontA(HIMC imc, LPLOGFONTA lf);
BOOL WINAPI ImmSetCompositionWindow(HIMC imc, PCOMPOSITIONFORM cf);
LONG WINAPI ImmGetCompositionStringW(HIMC imc, DWORD x, LPVOID buf, DWORD buflen);

#endif /* __IME_WRAP_H__ */
