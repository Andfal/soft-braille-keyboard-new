.class Lcom/nirenr/talkman/dialog/b$g$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/b$g$d;->onCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/b$g$d;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/b$g$d;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/b$g$d$a;->a:Lcom/nirenr/talkman/dialog/b$g$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 2

    iget v0, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->a:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/b$g$d$a;->a:Lcom/nirenr/talkman/dialog/b$g$d;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/b$g$d;->b:Lcom/nirenr/talkman/dialog/b$g;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/b$g;->b:Lcom/nirenr/talkman/dialog/b;

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/dialog/b;->m(Lcom/nirenr/talkman/dialog/b;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/b$g$d$a;->a:Lcom/nirenr/talkman/dialog/b$g$d;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/b$g$d;->b:Lcom/nirenr/talkman/dialog/b$g;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/b$g;->b:Lcom/nirenr/talkman/dialog/b;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/b;->g(Lcom/nirenr/talkman/dialog/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const v0, 0x7f07059d

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
