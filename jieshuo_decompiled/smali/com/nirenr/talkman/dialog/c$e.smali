.class Lcom/nirenr/talkman/dialog/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/c;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/c;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/c;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/c$e;->a:Lcom/nirenr/talkman/dialog/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/c$e;->a:Lcom/nirenr/talkman/dialog/c;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/c;->d(Lcom/nirenr/talkman/dialog/c;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/c$e;->a:Lcom/nirenr/talkman/dialog/c;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/c;->b(Lcom/nirenr/talkman/dialog/c;)Landroid/widget/ArrayListAdapter;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/widget/ArrayListAdapter;->insert(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/c$e;->a:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/c;->c(Lcom/nirenr/talkman/dialog/c;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/c$e;->a:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/c;->b(Lcom/nirenr/talkman/dialog/c;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/c$e;->a:Lcom/nirenr/talkman/dialog/c;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/c;->c(Lcom/nirenr/talkman/dialog/c;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->filter(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/c$e;->a:Lcom/nirenr/talkman/dialog/c;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/c;->g(Lcom/nirenr/talkman/dialog/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->addFavorites(Ljava/lang/String;)Z

    return-void
.end method
