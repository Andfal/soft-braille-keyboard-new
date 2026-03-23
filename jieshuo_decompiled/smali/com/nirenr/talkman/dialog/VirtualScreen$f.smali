.class Lcom/nirenr/talkman/dialog/VirtualScreen$f;
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

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$f;->a:Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/nirenr/talkman/dialog/VirtualScreen;->j()V

    new-instance p1, Lcom/nirenr/talkman/dialog/SplitEditDialog;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$f;->a:Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/VirtualScreen;->e(Lcom/nirenr/talkman/dialog/VirtualScreen;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$f;->a:Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/VirtualScreen;->a(Lcom/nirenr/talkman/dialog/VirtualScreen;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->U()V

    return-void
.end method
