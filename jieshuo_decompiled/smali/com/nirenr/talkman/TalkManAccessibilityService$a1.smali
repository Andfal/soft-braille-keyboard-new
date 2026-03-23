.class Lcom/nirenr/talkman/TalkManAccessibilityService$a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->postClick(JLcom/luajava/LuaTable;Lcom/luajava/LuaFunction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/luajava/LuaTable;

.field final synthetic b:Lcom/luajava/LuaFunction;

.field final synthetic c:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/luajava/LuaTable;Lcom/luajava/LuaFunction;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a1;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a1;->a:Lcom/luajava/LuaTable;

    iput-object p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a1;->b:Lcom/luajava/LuaFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a1;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a1;->a:Lcom/luajava/LuaTable;

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$a1;->b:Lcom/luajava/LuaFunction;

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->click(Lcom/luajava/LuaTable;Lcom/luajava/LuaFunction;)Z

    return-void
.end method
