.class Lcom/unisound/sdk/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unisound/sdk/bu;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/au;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/au;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ax;->a:Lcom/unisound/sdk/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ax;->a:Lcom/unisound/sdk/au;

    invoke-static {v0, p1}, Lcom/unisound/sdk/au;->a(Lcom/unisound/sdk/au;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    const-string p1, "SpeechSynthesizerInterface USCAsyncTask: onEnd"

    invoke-static {p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    return-void
.end method
