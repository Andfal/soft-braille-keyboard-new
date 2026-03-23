.class Lh2/b$a$b;
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
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Landroid/app/AlertDialog;

.field final synthetic c:Lh2/b$a;


# direct methods
.method constructor <init>(Lh2/b$a;Ljava/lang/Runnable;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lh2/b$a$b;->c:Lh2/b$a;

    iput-object p2, p0, Lh2/b$a$b;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lh2/b$a$b;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "h"

    const-string v2, ""

    iget-object v3, v1, Lh2/b$a$b;->c:Lh2/b$a;

    iget-object v3, v3, Lh2/b$a;->c:Lh2/b;

    invoke-static {v3}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, v1, Lh2/b$a$b;->a:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, v1, Lh2/b$a$b;->b:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    iget-object v3, v1, Lh2/b$a$b;->c:Lh2/b$a;

    invoke-static {v3}, Lh2/b$a;->a(Lh2/b$a;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    sput-object v3, Lcom/day/BigModelNew;->MyQuestion:Ljava/lang/String;

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "```json"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "```"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "image_width"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "image_height"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "elements"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    invoke-static {}, Lcom/androlua/LuaUtil;->getScale()F

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v15, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    const-string v8, "content"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v8, "x"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iget-object v10, v1, Lh2/b$a$b;->c:Lh2/b$a;

    iget-object v10, v10, Lh2/b$a;->c:Lh2/b;

    invoke-static {v10}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/androlua/LuaService;->getWidth()I

    move-result v10

    mul-int v8, v8, v10

    div-int v10, v8, v2

    const-string v8, "y"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iget-object v11, v1, Lh2/b$a$b;->c:Lh2/b$a;

    iget-object v11, v11, Lh2/b$a;->c:Lh2/b;

    invoke-static {v11}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v11

    invoke-virtual {v11}, Lcom/androlua/LuaService;->getHeight()I

    move-result v11

    mul-int v8, v8, v11

    div-int v11, v8, v4

    const-string v8, "w"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iget-object v12, v1, Lh2/b$a$b;->c:Lh2/b$a;

    iget-object v12, v12, Lh2/b$a;->c:Lh2/b;

    invoke-static {v12}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v12

    invoke-virtual {v12}, Lcom/androlua/LuaService;->getWidth()I

    move-result v12

    mul-int v8, v8, v12

    div-int v12, v8, v2

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iget-object v13, v1, Lh2/b$a$b;->c:Lh2/b$a;

    iget-object v13, v13, Lh2/b$a;->c:Lh2/b;

    invoke-static {v13}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v13

    invoke-virtual {v13}, Lcom/androlua/LuaService;->getHeight()I

    move-result v13

    mul-int v8, v8, v13

    div-int v13, v8, v4

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;-><init>(Ljava/lang/String;IIIII)V

    aput-object v15, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/nirenr/talkman/dialog/VirtualScreen;

    iget-object v2, v1, Lh2/b$a$b;->c:Lh2/b$a;

    iget-object v2, v2, Lh2/b$a;->c:Lh2/b;

    invoke-static {v2}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/nirenr/talkman/dialog/VirtualScreen;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    invoke-virtual {v0, v5}, Lcom/nirenr/talkman/dialog/VirtualScreen;->r([Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-virtual {v0}, Lcom/nirenr/talkman/dialog/VirtualScreen;->s()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, v1, Lh2/b$a$b;->c:Lh2/b$a;

    iget-object v0, v0, Lh2/b$a;->c:Lh2/b;

    invoke-virtual/range {p1 .. p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lh2/b;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lh2/b$a$b;->c:Lh2/b$a;

    iget-object v0, v0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lh2/b$a$b;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lh2/b$a$b;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lh2/b$a$b;->c:Lh2/b$a;

    invoke-static {v0}, Lh2/b$a;->a(Lh2/b$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/day/BigModelNew;->MyQuestion:Ljava/lang/String;

    iget-object v0, p0, Lh2/b$a$b;->c:Lh2/b$a;

    iget-object v0, v0, Lh2/b$a;->c:Lh2/b;

    invoke-virtual {v0, p1}, Lh2/b;->onError(Ljava/lang/String;)V

    return-void
.end method
