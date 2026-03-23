.class Lcom/nirenr/talkman/settings/CloudNote$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/CloudNote;->m(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote$12;->a:Lcom/nirenr/talkman/settings/CloudNote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 3

    iget v0, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->a:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/CloudNote$12;->a:Lcom/nirenr/talkman/settings/CloudNote;

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/settings/CloudNote;->f(Lcom/nirenr/talkman/settings/CloudNote;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote$12;->a:Lcom/nirenr/talkman/settings/CloudNote;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0703bb

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote$12;->a:Lcom/nirenr/talkman/settings/CloudNote;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/CloudNote;->g(Lcom/nirenr/talkman/settings/CloudNote;)V

    return-void
.end method
