.class Lh2/s$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/s;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/s;


# direct methods
.method constructor <init>(Lh2/s;)V
    .locals 0

    iput-object p1, p0, Lh2/s$f;->a:Lh2/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lh2/s$f;->a:Lh2/s;

    invoke-static {p1}, Lh2/s;->a(Lh2/s;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    new-instance p1, Lcom/nirenr/talkman/dialog/SplitEditDialog;

    iget-object v0, p0, Lh2/s$f;->a:Lh2/s;

    invoke-static {v0}, Lh2/s;->c(Lh2/s;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lh2/s$f;->a:Lh2/s;

    invoke-static {v1}, Lh2/s;->d(Lh2/s;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->U()V

    return-void
.end method
