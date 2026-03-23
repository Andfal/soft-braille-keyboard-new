.class Lcom/nirenr/talkman/dialog/VirtualScreen$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/VirtualScreen;->n(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/VirtualScreen;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/VirtualScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$e;->a:Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$e;->a:Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/VirtualScreen;->l()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$e;->a:Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/VirtualScreen;->e(Lcom/nirenr/talkman/dialog/VirtualScreen;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/dialog/VirtualScreen$e$a;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/dialog/VirtualScreen$e$a;-><init>(Lcom/nirenr/talkman/dialog/VirtualScreen$e;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
