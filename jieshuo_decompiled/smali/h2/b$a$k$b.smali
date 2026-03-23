.class Lh2/b$a$k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/translate/TransApi$OnResultListener;


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

    iput-object p1, p0, Lh2/b$a$k$b;->a:Lh2/b$a$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransResult(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lh2/b$a$k$b;->a:Lh2/b$a$k;

    iget-object v0, v0, Lh2/b$a$k;->a:Lh2/b$a;

    iget-object v0, v0, Lh2/b$a;->c:Lh2/b;

    invoke-static {v0}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const v1, 0x7f07038d

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    sput-object p1, Lcom/day/BigModelNew;->MyQuestion:Ljava/lang/String;

    iget-object p1, p0, Lh2/b$a$k$b;->a:Lh2/b$a$k;

    iget-object p1, p1, Lh2/b$a$k;->a:Lh2/b$a;

    iget-object p1, p1, Lh2/b$a;->c:Lh2/b;

    invoke-static {p1}, Lh2/b;->c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    new-instance v0, Lh2/b$a$k$b$a;

    invoke-direct {v0, p0}, Lh2/b$a$k$b$a;-><init>(Lh2/b$a$k$b;)V

    const/16 v1, 0x14

    invoke-virtual {p1, v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->youTu(ILcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    return-void
.end method
