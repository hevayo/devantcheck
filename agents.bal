import ballerinax/ai;

final ai:OpenAiProvider _myChatModel = check new ("", ai:GPT_3_5_TURBO_0613);
final ai:Agent _myChatAgent = check new (
    systemPrompt = {role: "Assistant", instructions: string `Say hello for every request`}, model = _myChatModel, tools = []
);
