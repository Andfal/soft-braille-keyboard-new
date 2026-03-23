.class Lcom/nirenr/talkman/TalkManAccessibilityService$v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->postExecute(JLjava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/luajava/LuaFunction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/luajava/LuaFunction;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/view/accessibility/AccessibilityNodeInfo;

.field final synthetic d:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/luajava/LuaFunction;Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$v0;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$v0;->a:Lcom/luajava/LuaFunction;

    iput-object p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$v0;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$v0;->c:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$v0;->a:Lcom/luajava/LuaFunction;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$v0;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$v0;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$v0;->c:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, v3, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$v0;->b:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$v0;->c:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$v0;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "postExecute"

    invoke-virtual {v1, v2, v0}, Lcom/androlua/LuaService;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
