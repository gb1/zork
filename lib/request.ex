defmodule Spork.Request do
  defstruct id: nil,
            sessionId: nil,
            result: nil

  def request(move) do
    %{
      "id" => "dfb19832-02c9-40cf-8f7d-1d727c110b82",
      "lang" => "en",
      "result" => %{
        "action" => "input.unknown",
        "actionIncomplete" => false,
        "contexts" => [],
        "fulfillment" => %{
          "messages" => [%{"speech" => "", "type" => 0}],
          "speech" => ""
        },
        "metadata" => %{
          "intentId" => "5b3b2a22-a179-4878-90d8-9576272b4e45",
          "intentName" => "Default Fallback Intent",
          "webhookForSlotFillingUsed" => "false",
          "webhookUsed" => "true"
        },
        "parameters" => %{},
        "resolvedQuery" => move,
        "score" => 1.0,
        "source" => "agent",
        "speech" => ""
      },
      "sessionId" => "f0b0a637-65ea-4709-a558-f98c08201c8c",
      "status" => %{
        "code" => 200,
        "errorType" => "success",
        "webhookTimedOut" => false
      },
      "timestamp" => "2018-04-01T19:19:56.753Z"
    }
    |> Poison.encode!()
  end

  def welcome do
    %{
      "id" => "279fef84-ef89-438e-8944-ca9aaa535380",
      "lang" => "en-us",
      "originalRequest" => %{
        "data" => %{
          "availableSurfaces" => [
            %{
              "capabilities" => [
                %{"name" => "actions.capability.AUDIO_OUTPUT"},
                %{"name" => "actions.capability.SCREEN_OUTPUT"}
              ]
            }
          ],
          "conversation" => %{"conversationId" => "1522788937140", "type" => "NEW"},
          "inputs" => [
            %{
              "intent" => "actions.intent.MAIN",
              "rawInputs" => [
                %{"inputType" => "VOICE", "query" => "Talk to my test app"}
              ]
            }
          ],
          "isInSandbox" => true,
          "surface" => %{
            "capabilities" => [
              %{"name" => "actions.capability.MEDIA_RESPONSE_AUDIO"},
              %{"name" => "actions.capability.WEB_BROWSER"},
              %{"name" => "actions.capability.AUDIO_OUTPUT"},
              %{"name" => "actions.capability.SCREEN_OUTPUT"}
            ]
          },
          "user" => %{
            "lastSeen" => "2018-04-03T20:54:38Z",
            "locale" => "en-US",
            "userId" =>
              "ABwppHFwofVYaqT3-EtcPhgDN_nnKgbfnRUBOEPDoID1fA-2EKtxxtaazM6Ce-6sI0ZiXYlnDD1C7g"
          }
        },
        "source" => "google",
        "version" => "2"
      },
      "result" => %{
        "action" => "input.welcome",
        "actionIncomplete" => false,
        "contexts" => [
          %{
            "lifespan" => 0,
            "name" => "google_assistant_welcome",
            "parameters" => %{}
          },
          %{
            "lifespan" => 0,
            "name" => "actions_capability_screen_output",
            "parameters" => %{}
          },
          %{
            "lifespan" => 0,
            "name" => "google_assistant_input_type_voice",
            "parameters" => %{}
          },
          %{
            "lifespan" => 0,
            "name" => "actions_capability_audio_output",
            "parameters" => %{}
          },
          %{
            "lifespan" => 0,
            "name" => "actions_capability_web_browser",
            "parameters" => %{}
          },
          %{
            "lifespan" => 0,
            "name" => "actions_capability_media_response_audio",
            "parameters" => %{}
          }
        ],
        "fulfillment" => %{"messages" => [], "speech" => ""},
        "metadata" => %{
          "intentId" => "e1c2f1a9-f992-4b9d-bb92-0521b8087dc9",
          "intentName" => "Default Welcome Intent",
          "nluResponseTime" => 0,
          "webhookForSlotFillingUsed" => "false",
          "webhookUsed" => "true"
        },
        "parameters" => %{},
        "resolvedQuery" => "GOOGLE_ASSISTANT_WELCOME",
        "score" => 1.0,
        "source" => "agent",
        "speech" => ""
      },
      "sessionId" => "1522788937140",
      "status" => %{
        "code" => 200,
        "errorType" => "success",
        "webhookTimedOut" => false
      },
      "timestamp" => "2018-04-03T20:55:37.35Z"
    }
    |> Poison.encode!()
  end

  def start_new_game_prompt do
    %{
      "id" => "cc997694-65c3-45b9-b4ee-cbaff66e5411",
      "lang" => "en-us",
      "originalRequest" => %{
        "data" => %{
          "availableSurfaces" => [
            %{
              "capabilities" => [
                %{"name" => "actions.capability.AUDIO_OUTPUT"},
                %{"name" => "actions.capability.SCREEN_OUTPUT"}
              ]
            }
          ],
          "conversation" => %{
            "conversationId" => "1522790581798",
            "conversationToken" => "[\"defaultwelcomeintent-followup\"]",
            "type" => "ACTIVE"
          },
          "inputs" => [
            %{
              "arguments" => [
                %{"name" => "text", "rawText" => "yes", "textValue" => "yes"}
              ],
              "intent" => "actions.intent.TEXT",
              "rawInputs" => [%{"inputType" => "VOICE", "query" => "yes"}]
            }
          ],
          "isInSandbox" => true,
          "surface" => %{
            "capabilities" => [
              %{"name" => "actions.capability.AUDIO_OUTPUT"},
              %{"name" => "actions.capability.SCREEN_OUTPUT"},
              %{"name" => "actions.capability.MEDIA_RESPONSE_AUDIO"},
              %{"name" => "actions.capability.WEB_BROWSER"}
            ]
          },
          "user" => %{
            "lastSeen" => "2018-04-03T21:18:30Z",
            "locale" => "en-US",
            "userId" =>
              "ABwppHFwofVYaqT3-EtcPhgDN_nnKgbfnRUBOEPDoID1fA-2EKtxxtaazM6Ce-6sI0ZiXYlnDD1C7g"
          }
        },
        "source" => "google",
        "version" => "2"
      },
      "result" => %{
        "action" => "DefaultWelcomeIntent.DefaultWelcomeIntent-yes",
        "actionIncomplete" => false,
        "contexts" => [
          %{
            "lifespan" => 0,
            "name" => "actions_capability_screen_output",
            "parameters" => %{}
          },
          %{
            "lifespan" => 0,
            "name" => "actions_capability_audio_output",
            "parameters" => %{}
          },
          %{
            "lifespan" => 0,
            "name" => "google_assistant_input_type_voice",
            "parameters" => %{}
          },
          %{
            "lifespan" => 0,
            "name" => "actions_capability_media_response_audio",
            "parameters" => %{}
          },
          %{
            "lifespan" => 1,
            "name" => "defaultwelcomeintent-followup",
            "parameters" => %{}
          },
          %{
            "lifespan" => 0,
            "name" => "actions_capability_web_browser",
            "parameters" => %{}
          }
        ],
        "fulfillment" => %{
          "messages" => [%{"speech" => "", "type" => 0}],
          "speech" => ""
        },
        "metadata" => %{
          "intentId" => "5fafa023-d2df-46c3-a3ed-80ef0e811853",
          "intentName" => "Default Welcome Intent - yes",
          "isResponseToSlotfilling" => false,
          "nluResponseTime" => 4,
          "webhookForSlotFillingUsed" => "false",
          "webhookUsed" => "true"
        },
        "parameters" => %{},
        "resolvedQuery" => "yes",
        "score" => 1.0,
        "source" => "agent",
        "speech" => ""
      },
      "sessionId" => "1522790581798",
      "status" => %{
        "code" => 200,
        "errorType" => "success",
        "webhookTimedOut" => false
      },
      "timestamp" => "2018-04-03T21:23:09.768Z"
    }
    |> Poison.encode!()
  end
end
