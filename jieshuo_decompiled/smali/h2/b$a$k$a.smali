.class Lh2/b$a$k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/b$a$k;->onEnd(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/b$a$k;


# direct methods
.method constructor <init>(Lh2/b$a$k;)V
    .locals 0

    iput-object p1, p0, Lh2/b$a$k$a;->a:Lh2/b$a$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/day/BigModelNew;->MyQuestion:Ljava/lang/String;

    iget-object v0, p0, Lh2/b$a$k$a;->a:Lh2/b$a$k;

    iget-object v0, v0, Lh2/b$a$k;->a:Lh2/b$a;

    iget-object v0, v0, Lh2/b$a;->c:Lh2/b;

    invoke-virtual {v0, p1}, Lh2/b;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/day/BigModelNew;->MyQuestion:Ljava/lang/String;

    iget-object v0, p0, Lh2/b$a$k$a;->a:Lh2/b$a$k;

    iget-object v0, v0, Lh2/b$a$k;->a:Lh2/b$a;

    iget-object v0, v0, Lh2/b$a;->c:Lh2/b;

    invoke-virtual {v0, p1}, Lh2/b;->onError(Ljava/lang/String;)V

    return-void
.end method
