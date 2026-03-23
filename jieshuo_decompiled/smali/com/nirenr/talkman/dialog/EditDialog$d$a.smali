.class Lcom/nirenr/talkman/dialog/EditDialog$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/SplitEditDialog$onTextChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/EditDialog$d;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/EditDialog$d;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/EditDialog$d;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/EditDialog$d$a;->a:Lcom/nirenr/talkman/dialog/EditDialog$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/EditDialog$d$a;->a:Lcom/nirenr/talkman/dialog/EditDialog$d;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/EditDialog$d;->b:Lcom/nirenr/talkman/dialog/EditDialog;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/EditDialog;->c(Lcom/nirenr/talkman/dialog/EditDialog;)Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;->onCallback(Ljava/lang/String;)V

    return-void
.end method
