.class Lcom/nirenr/talkman/settings/CloudNote$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/CloudNote;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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

    iput-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote$2;->a:Lcom/nirenr/talkman/settings/CloudNote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/CloudNote$2;->a:Lcom/nirenr/talkman/settings/CloudNote;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/CloudNote;->c(Lcom/nirenr/talkman/settings/CloudNote;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nirenr/talkman/settings/CloudNote$2;->a:Lcom/nirenr/talkman/settings/CloudNote;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1}, Lcom/nirenr/talkman/settings/CloudNote;->c(Lcom/nirenr/talkman/settings/CloudNote;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const-wide/16 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/nirenr/talkman/settings/CloudNote;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/settings/CloudNote$2;->a:Lcom/nirenr/talkman/settings/CloudNote;

    const-string v1, ""

    invoke-static {v0, p1, v1}, Lcom/nirenr/talkman/settings/CloudNote;->i(Lcom/nirenr/talkman/settings/CloudNote;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
