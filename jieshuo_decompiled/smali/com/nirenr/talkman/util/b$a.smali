.class Lcom/nirenr/talkman/util/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/b;->L(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/util/b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/b;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/b$a;->a:Lcom/nirenr/talkman/util/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 1

    iget p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->a:I

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$a;->a:Lcom/nirenr/talkman/util/b;

    invoke-static {p1}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const v0, 0x7f070374

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/util/b$a;->a:Lcom/nirenr/talkman/util/b;

    invoke-static {p1}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const v0, 0x7f07026f

    :goto_0
    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    return-void
.end method
