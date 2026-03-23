.class Lcom/nirenr/talkman/settings/CloudNote$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SplitEditView$OnExitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/CloudNote;->t(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/nirenr/talkman/settings/CloudNote;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/CloudNote;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote$5;->b:Lcom/nirenr/talkman/settings/CloudNote;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/CloudNote$5;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExit(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote$5;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
