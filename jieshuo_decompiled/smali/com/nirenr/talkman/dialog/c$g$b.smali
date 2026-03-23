.class Lcom/nirenr/talkman/dialog/c$g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/c$g;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/c$g;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/c$g;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/c$g$b;->a:Lcom/nirenr/talkman/dialog/c$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/c$g$b;->a:Lcom/nirenr/talkman/dialog/c$g;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/c;->b(Lcom/nirenr/talkman/dialog/c;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayListAdapter;->getData()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/c$g$b;->a:Lcom/nirenr/talkman/dialog/c$g;

    iget p2, p2, Lcom/nirenr/talkman/dialog/c$g;->a:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/c$g$b;->a:Lcom/nirenr/talkman/dialog/c$g;

    iget-object p2, p2, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/c;->d(Lcom/nirenr/talkman/dialog/c;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/c$g$b;->a:Lcom/nirenr/talkman/dialog/c$g;

    iget-object p2, p2, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/c;->b(Lcom/nirenr/talkman/dialog/c;)Landroid/widget/ArrayListAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ArrayListAdapter;->remove(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/c$g$b;->a:Lcom/nirenr/talkman/dialog/c$g;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/c;->g(Lcom/nirenr/talkman/dialog/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->addFavorites(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/c$g$b;->a:Lcom/nirenr/talkman/dialog/c$g;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/c;->g(Lcom/nirenr/talkman/dialog/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/c$g$b;->a:Lcom/nirenr/talkman/dialog/c$g;

    iget-object p2, p2, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/c;->g(Lcom/nirenr/talkman/dialog/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

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

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/c$g$b;->a:Lcom/nirenr/talkman/dialog/c$g;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/c;->c(Lcom/nirenr/talkman/dialog/c;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/c$g$b;->a:Lcom/nirenr/talkman/dialog/c$g;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/c;->b(Lcom/nirenr/talkman/dialog/c;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/c$g$b;->a:Lcom/nirenr/talkman/dialog/c$g;

    iget-object p2, p2, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/c;->c(Lcom/nirenr/talkman/dialog/c;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ArrayListAdapter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/c$g$b;->a:Lcom/nirenr/talkman/dialog/c$g;

    iget-object p2, p1, Lcom/nirenr/talkman/dialog/c$g;->b:Lcom/nirenr/talkman/dialog/c;

    iget p1, p1, Lcom/nirenr/talkman/dialog/c$g;->a:I

    invoke-static {p2, p1}, Lcom/nirenr/talkman/dialog/c;->n(Lcom/nirenr/talkman/dialog/c;I)V

    return-void
.end method
