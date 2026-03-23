.class Lh2/b$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/b$a;


# direct methods
.method constructor <init>(Lh2/b$a;)V
    .locals 0

    iput-object p1, p0, Lh2/b$a$c;->a:Lh2/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 17

    move-object/from16 v7, p0

    const-string v0, ""

    const/4 v1, 0x0

    sput-object v1, Lcom/day/BigModelNew;->MyQuestion:Ljava/lang/String;

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "```json"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "```"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "w"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "h"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v2, "pts"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    const-wide/16 v14, 0x1f4

    if-ge v12, v10, :cond_0

    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v11}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    iget-object v1, v7, Lh2/b$a$c;->a:Lh2/b$a;

    iget-object v1, v1, Lh2/b$a;->c:Lh2/b;

    invoke-static {v1}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v4, Lh2/b$a$c$a;

    move-object v1, v4

    move-object/from16 v2, p0

    move-object v11, v4

    move v4, v0

    move-object/from16 v16, v6

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lh2/b$a$c$a;-><init>(Lh2/b$a$c;IIII)V

    int-to-long v1, v13

    mul-long v1, v1, v14

    move-object/from16 v3, v16

    invoke-virtual {v3, v11, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x0

    goto :goto_0

    :cond_0
    if-lez v13, :cond_1

    iget-object v0, v7, Lh2/b$a$c;->a:Lh2/b$a;

    iget-object v0, v0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    int-to-long v1, v13

    mul-long v1, v1, v14

    iget-object v3, v7, Lh2/b$a$c;->a:Lh2/b$a;

    iget-object v3, v3, Lh2/b$a;->c:Lh2/b;

    invoke-static {v3}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    const v4, 0x7f070202

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->postSpeak(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    iget-object v0, v7, Lh2/b$a$c;->a:Lh2/b$a;

    iget-object v0, v0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, v7, Lh2/b$a$c;->a:Lh2/b$a;

    iget-object v1, v1, Lh2/b$a;->c:Lh2/b;

    invoke-static {v1}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    const v2, 0x7f0703b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/day/BigModelNew;->MyQuestion:Ljava/lang/String;

    iget-object v0, p0, Lh2/b$a$c;->a:Lh2/b$a;

    iget-object v0, v0, Lh2/b$a;->c:Lh2/b;

    invoke-virtual {v0, p1}, Lh2/b;->onError(Ljava/lang/String;)V

    return-void
.end method
