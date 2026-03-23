.class Lcom/nirenr/talkman/dialog/SplitEditDialog$a0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/SplitEditDialog$onTextChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0$a;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0$a;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0$a;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;

    iget v2, v1, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->a:I

    aput-object p1, v0, v2

    iget-object p1, v1, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->H(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0$a;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;

    iget-object v0, p1, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    iget p1, p1, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;->a:I

    invoke-static {v0, p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->v(Lcom/nirenr/talkman/dialog/SplitEditDialog;I)V

    return-void
.end method
