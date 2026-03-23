.class Lcom/androlua/LuaEditActivity$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaEditActivity$6;->onSave(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/androlua/LuaEditActivity$6;

.field final synthetic val$service:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditActivity$6;Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditActivity$6$1;->this$1:Lcom/androlua/LuaEditActivity$6;

    iput-object p2, p0, Lcom/androlua/LuaEditActivity$6$1;->val$service:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaEditActivity$6$1;->val$service:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v1, p0, Lcom/androlua/LuaEditActivity$6$1;->this$1:Lcom/androlua/LuaEditActivity$6;

    iget-object v1, v1, Lcom/androlua/LuaEditActivity$6;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {v1}, Lcom/androlua/LuaEditActivity;->e(Lcom/androlua/LuaEditActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/androlua/LuaEditActivity$6$1;->val$service:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->plugin(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;

    return-void
.end method
