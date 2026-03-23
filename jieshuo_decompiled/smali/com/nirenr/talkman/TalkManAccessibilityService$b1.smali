.class Lcom/nirenr/talkman/TalkManAccessibilityService$b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->click(Lcom/luajava/LuaTable;Lcom/luajava/LuaFunction;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/luajava/LuaFunction;

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/luajava/LuaFunction;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$b1;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$b1;->a:Lcom/luajava/LuaFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(ZLcom/luajava/LuaTable;Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$b1;->a:Lcom/luajava/LuaFunction;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$b1;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string p3, "click"

    invoke-virtual {p2, p3, p1}, Lcom/androlua/LuaService;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
