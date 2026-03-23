.class Lcom/nirenr/talkman/dialog/VirtualScreen$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/VirtualScreen$d;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/VirtualScreen$d;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/VirtualScreen$d;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$d$b;->a:Lcom/nirenr/talkman/dialog/VirtualScreen$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$d$b;->a:Lcom/nirenr/talkman/dialog/VirtualScreen$d;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/VirtualScreen$d;->a:Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/VirtualScreen;->e(Lcom/nirenr/talkman/dialog/VirtualScreen;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->showVirtualScreen()V

    return-void
.end method
