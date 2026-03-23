.class Lcom/nirenr/talkman/settings/CloudNote$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/CloudNote;->s(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/CloudNote;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/CloudNote;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote$11;->a:Lcom/nirenr/talkman/settings/CloudNote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 2

    iget v0, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->a:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/CloudNote$11;->a:Lcom/nirenr/talkman/settings/CloudNote;

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/settings/CloudNote;->f(Lcom/nirenr/talkman/settings/CloudNote;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote$11;->a:Lcom/nirenr/talkman/settings/CloudNote;

    const v0, 0x7f070202

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote$11;->a:Lcom/nirenr/talkman/settings/CloudNote;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/CloudNote;->g(Lcom/nirenr/talkman/settings/CloudNote;)V

    return-void
.end method
