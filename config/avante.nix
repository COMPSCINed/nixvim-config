{
  plugins.avante = {
    enable = true;

    settings = {
      providers = {
        deepseek = {
          "__inherited_from" = "openai";
          api_key_name = "DEEPSEEK_API_KEY";
          endpoint = "https://api.deepseek.com";
          model = "deepseek-chat";
        };
      };

      provider = "deepseek";
    };
  };
  plugins.render-markdown = {
    enable = true;
    settings = {
      file_types = [
        "Avante"
      ];
    };
  };
}
