import { defineMiddleware } from "astro:middleware";

export const onRequest = defineMiddleware(async (context, next) => {
  try {
    const response = await next();
    return response;
  } catch (error: any) {
    return new Response(
      `<!DOCTYPE html>
      <html>
        <head>
          <title>Server Error | IWINNI Debugger</title>
        </head>
        <body style="font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif; padding: 2rem; background: #fff5f5; color: #9b2c2c; line-height: 1.5;">
          <div style="max-width: 800px; margin: 0 auto; background: white; padding: 2rem; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.1); border-top: 4px solid #e53e3e;">
            <h1 style="margin-top: 0; color: #e53e3e;">Server Rendering Error</h1>
            <p><strong>Error Message:</strong> ${error?.message || error}</p>
            <h3 style="margin-bottom: 0.5rem;">Stack Trace:</h3>
            <pre style="background: #f7fafc; padding: 1rem; border: 1px solid #edf2f7; border-radius: 4px; overflow-x: auto; font-family: monospace; font-size: 0.85rem;">${error?.stack || 'No stack trace available'}</pre>
          </div>
        </body>
      </html>`,
      {
        status: 500,
        headers: { "content-type": "text/html; charset=utf-8" }
      }
    );
  }
});
