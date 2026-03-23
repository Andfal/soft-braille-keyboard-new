.class Lcom/nirenr/talkman/settings/CloudNote$10$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/CloudNote$10;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/CloudNote$10;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/CloudNote$10;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote$10$2;->a:Lcom/nirenr/talkman/settings/CloudNote$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/CloudNote$10$2;->a:Lcom/nirenr/talkman/settings/CloudNote$10;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/CloudNote$10;->b:Lcom/nirenr/talkman/settings/CloudNote;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/CloudNote;->a(Lcom/nirenr/talkman/settings/CloudNote;)Landroid/widget/ArrayListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/CloudNote$10$2;->a:Lcom/nirenr/talkman/settings/CloudNote$10;

    iget v1, v1, Lcom/nirenr/talkman/settings/CloudNote$10;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/CloudNote$10$2;->a:Lcom/nirenr/talkman/settings/CloudNote$10;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/CloudNote$10;->b:Lcom/nirenr/talkman/settings/CloudNote;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/CloudNote;->a(Lcom/nirenr/talkman/settings/CloudNote;)Landroid/widget/ArrayListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/CloudNote$10$2;->a:Lcom/nirenr/talkman/settings/CloudNote$10;

    iget v2, v2, Lcom/nirenr/talkman/settings/CloudNote$10;->a:I

    invoke-virtual {v1, v2}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/nirenr/talkman/settings/CloudNote;->j(Lcom/nirenr/talkman/settings/CloudNote;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
