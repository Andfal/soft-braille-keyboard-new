.class Lcom/nirenr/talkman/dialog/VirtualScreen$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/VirtualScreen$c;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/VirtualScreen$c;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/VirtualScreen$c;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$c$b;->a:Lcom/nirenr/talkman/dialog/VirtualScreen$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$c$b;->a:Lcom/nirenr/talkman/dialog/VirtualScreen$c;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/VirtualScreen$c;->a:Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/VirtualScreen;->e(Lcom/nirenr/talkman/dialog/VirtualScreen;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->showVirtualScreen()V

    return-void
.end method
