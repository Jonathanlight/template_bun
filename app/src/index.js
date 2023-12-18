import { serve } from "bun";

serve({
  fetch(req) {
    return new Response("Bonjour depuis Bun!");
  },
});
