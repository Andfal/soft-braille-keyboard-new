.class Lcom/nirenr/talkman/dialog/SplitEditDialog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/SplitEditDialog;->U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/SplitEditDialog;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$b;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$b;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->p(Lcom/nirenr/talkman/dialog/SplitEditDialog;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$b;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->B(Lcom/nirenr/talkman/dialog/SplitEditDialog;Z)V

    return-void
.end method
