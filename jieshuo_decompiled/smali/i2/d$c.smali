.class Li2/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li2/d;->onResult(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Li2/d;


# direct methods
.method constructor <init>(Li2/d;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Li2/d$c;->b:Li2/d;

    iput-object p2, p0, Li2/d$c;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Li2/d$c;->b:Li2/d;

    invoke-static {v0}, Li2/d;->a(Li2/d;)Lcom/nirenr/talkman/speech/RecognizerListener;

    move-result-object v0

    iget-object v1, p0, Li2/d$c;->a:Lorg/json/JSONObject;

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nirenr/talkman/speech/RecognizerListener;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Li2/d$c;->b:Li2/d;

    invoke-static {v1}, Li2/d;->a(Li2/d;)Lcom/nirenr/talkman/speech/RecognizerListener;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nirenr/talkman/speech/RecognizerListener;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
