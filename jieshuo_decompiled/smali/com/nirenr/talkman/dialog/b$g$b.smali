.class Lcom/nirenr/talkman/dialog/b$g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/b$g;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/b$g;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/b$g;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/b$g$b;->a:Lcom/nirenr/talkman/dialog/b$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/b$g$b;->a:Lcom/nirenr/talkman/dialog/b$g;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/b$g;->b:Lcom/nirenr/talkman/dialog/b;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/b;->b(Lcom/nirenr/talkman/dialog/b;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayListAdapter;->getData()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/b$g$b;->a:Lcom/nirenr/talkman/dialog/b$g;

    iget p2, p2, Lcom/nirenr/talkman/dialog/b$g;->a:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/b$g$b;->a:Lcom/nirenr/talkman/dialog/b$g;

    iget-object p2, p2, Lcom/nirenr/talkman/dialog/b$g;->b:Lcom/nirenr/talkman/dialog/b;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/b;->d(Lcom/nirenr/talkman/dialog/b;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/b$g$b;->a:Lcom/nirenr/talkman/dialog/b$g;

    iget-object p2, p2, Lcom/nirenr/talkman/dialog/b$g;->b:Lcom/nirenr/talkman/dialog/b;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/b;->b(Lcom/nirenr/talkman/dialog/b;)Landroid/widget/ArrayListAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ArrayListAdapter;->remove(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/b$g$b;->a:Lcom/nirenr/talkman/dialog/b$g;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/b$g;->b:Lcom/nirenr/talkman/dialog/b;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/b;->g(Lcom/nirenr/talkman/dialog/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->addClipboard()Z

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/b$g$b;->a:Lcom/nirenr/talkman/dialog/b$g;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/b$g;->b:Lcom/nirenr/talkman/dialog/b;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/b;->c(Lcom/nirenr/talkman/dialog/b;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/b$g$b;->a:Lcom/nirenr/talkman/dialog/b$g;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/b$g;->b:Lcom/nirenr/talkman/dialog/b;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/b;->b(Lcom/nirenr/talkman/dialog/b;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/b$g$b;->a:Lcom/nirenr/talkman/dialog/b$g;

    iget-object p2, p2, Lcom/nirenr/talkman/dialog/b$g;->b:Lcom/nirenr/talkman/dialog/b;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/b;->c(Lcom/nirenr/talkman/dialog/b;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ArrayListAdapter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/b$g$b;->a:Lcom/nirenr/talkman/dialog/b$g;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/b$g;->b:Lcom/nirenr/talkman/dialog/b;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/b;->g(Lcom/nirenr/talkman/dialog/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/b$g$b;->a:Lcom/nirenr/talkman/dialog/b$g;

    iget-object p2, p2, Lcom/nirenr/talkman/dialog/b$g;->b:Lcom/nirenr/talkman/dialog/b;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/b;->g(Lcom/nirenr/talkman/dialog/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0703bb

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/b$g$b;->a:Lcom/nirenr/talkman/dialog/b$g;

    iget-object p2, p1, Lcom/nirenr/talkman/dialog/b$g;->b:Lcom/nirenr/talkman/dialog/b;

    iget p1, p1, Lcom/nirenr/talkman/dialog/b$g;->a:I

    invoke-static {p2, p1}, Lcom/nirenr/talkman/dialog/b;->n(Lcom/nirenr/talkman/dialog/b;I)V

    return-void
.end method
