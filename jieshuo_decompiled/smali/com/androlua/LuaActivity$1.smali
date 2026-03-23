.class Lcom/androlua/LuaActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaActivity;->biaozhu(I[Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaActivity;

.field final synthetic val$f:Ljava/io/File;

.field final synthetic val$fs:[Ljava/io/File;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/androlua/LuaActivity;ILjava/io/File;[Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaActivity$1;->this$0:Lcom/androlua/LuaActivity;

    iput p2, p0, Lcom/androlua/LuaActivity$1;->val$i:I

    iput-object p3, p0, Lcom/androlua/LuaActivity$1;->val$f:Ljava/io/File;

    iput-object p4, p0, Lcom/androlua/LuaActivity$1;->val$fs:[Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 4

    const-string v0, ".txt"

    iget-object v1, p0, Lcom/androlua/LuaActivity$1;->this$0:Lcom/androlua/LuaActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/androlua/LuaActivity$1;->val$i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ok "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/androlua/LuaActivity$1;->val$f:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androlua/LuaActivity;->sendMsg(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/androlua/LuaActivity$1;->val$f:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getJson()Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/androlua/LuaUtil;->save(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/androlua/LuaActivity$1;->val$f:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/androlua/LuaUtil;->save(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/androlua/LuaActivity$1;->this$0:Lcom/androlua/LuaActivity;

    iget v0, p0, Lcom/androlua/LuaActivity$1;->val$i:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/androlua/LuaActivity$1;->val$fs:[Ljava/io/File;

    invoke-static {p1, v0, v1}, Lcom/androlua/LuaActivity;->c(Lcom/androlua/LuaActivity;I[Ljava/io/File;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaActivity$1;->this$0:Lcom/androlua/LuaActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/androlua/LuaActivity$1;->val$i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " er "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/androlua/LuaActivity$1;->val$f:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/androlua/LuaActivity;->sendMsg(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/androlua/LuaActivity$1;->this$0:Lcom/androlua/LuaActivity;

    iget v0, p0, Lcom/androlua/LuaActivity$1;->val$i:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/androlua/LuaActivity$1;->val$fs:[Ljava/io/File;

    invoke-static {p1, v0, v1}, Lcom/androlua/LuaActivity;->c(Lcom/androlua/LuaActivity;I[Ljava/io/File;)V

    return-void
.end method
