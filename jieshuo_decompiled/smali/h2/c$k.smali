.class Lh2/c$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/c;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/c;


# direct methods
.method constructor <init>(Lh2/c;)V
    .locals 0

    iput-object p1, p0, Lh2/c$k;->a:Lh2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lh2/c$k;->a:Lh2/c;

    invoke-static {p1}, Lh2/c;->b(Lh2/c;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lh2/c$k;->a:Lh2/c;

    invoke-static {v0}, Lh2/c;->a(Lh2/c;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lh2/c$k;->a:Lh2/c;

    invoke-static {v0}, Lh2/c;->g(Lh2/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lh2/c$k$a;

    invoke-direct {v1, p0, p1}, Lh2/c$k$a;-><init>(Lh2/c$k;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
