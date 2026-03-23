.class Lcom/nirenr/talkman/util/ClickRunnable$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/ClickRunnable;->canClick()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/luajava/LuaTable;

.field final synthetic b:Lcom/nirenr/talkman/util/ClickRunnable;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/ClickRunnable;Lcom/luajava/LuaTable;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/ClickRunnable$a;->b:Lcom/nirenr/talkman/util/ClickRunnable;

    iput-object p2, p0, Lcom/nirenr/talkman/util/ClickRunnable$a;->a:Lcom/luajava/LuaTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(ZLcom/luajava/LuaTable;Ljava/lang/String;I)V
    .locals 1

    iget-object p2, p0, Lcom/nirenr/talkman/util/ClickRunnable$a;->b:Lcom/nirenr/talkman/util/ClickRunnable;

    invoke-static {p2}, Lcom/nirenr/talkman/util/ClickRunnable;->a(Lcom/nirenr/talkman/util/ClickRunnable;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "findAccessibilityNodeInfo canClick callback"

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/util/ClickRunnable$a;->b:Lcom/nirenr/talkman/util/ClickRunnable;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/nirenr/talkman/util/ClickRunnable;->c(Lcom/nirenr/talkman/util/ClickRunnable;Lcom/nirenr/talkman/util/ClickRunnable;)V

    const/4 p1, -0x1

    if-le p4, p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/util/ClickRunnable$a;->b:Lcom/nirenr/talkman/util/ClickRunnable;

    iget-object p2, p0, Lcom/nirenr/talkman/util/ClickRunnable$a;->a:Lcom/luajava/LuaTable;

    invoke-static {p1, p2}, Lcom/nirenr/talkman/util/ClickRunnable;->b(Lcom/nirenr/talkman/util/ClickRunnable;Lcom/luajava/LuaTable;)V

    iget-object p1, p0, Lcom/nirenr/talkman/util/ClickRunnable$a;->b:Lcom/nirenr/talkman/util/ClickRunnable;

    invoke-virtual {p1}, Lcom/nirenr/talkman/util/ClickRunnable;->run()V

    :cond_0
    return-void
.end method
