class ChatAi
  # 画图
  def self.draw(prompt)
    response = client.images.generate(parameters: { prompt: prompt, size: "512x512" })
    response.dig("data", 0, "url")
  end

  private
  def self.client
    @client ||= OpenAI::Client.new(access_token: Rails.application.credentials.openai_token)
  end
end