.class Lcom/nirenr/talkman/settings/ChatActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/ChatActivity;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/ChatActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/ChatActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/ChatActivity$1;->a:Lcom/nirenr/talkman/settings/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/settings/ChatActivity$1;->a:Lcom/nirenr/talkman/settings/ChatActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/ChatActivity;->b(Lcom/nirenr/talkman/settings/ChatActivity;)Landroid/widget/ArrayListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayListAdapter;->clear()V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/ChatActivity$1;->a:Lcom/nirenr/talkman/settings/ChatActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/ChatActivity;->b(Lcom/nirenr/talkman/settings/ChatActivity;)Landroid/widget/ArrayListAdapter;

    move-result-object v0

    invoke-static {}, Lcom/nirenr/talkman/d;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayListAdapter;->addAll(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/ChatActivity$1;->a:Lcom/nirenr/talkman/settings/ChatActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/ChatActivity;->b(Lcom/nirenr/talkman/settings/ChatActivity;)Landroid/widget/ArrayListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/ChatActivity$1;->a:Lcom/nirenr/talkman/settings/ChatActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/ChatActivity;->a(Lcom/nirenr/talkman/settings/ChatActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/ChatActivity$1;->a:Lcom/nirenr/talkman/settings/ChatActivity;

    invoke-static {v1}, Lcom/nirenr/talkman/settings/ChatActivity;->b(Lcom/nirenr/talkman/settings/ChatActivity;)Landroid/widget/ArrayListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    return-void
.end method
