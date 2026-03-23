.class Lcom/nirenr/talkman/TalkManAccessibilityService$u4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService$u4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService$u4;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService$u4;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$u4$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$u4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$u4$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$u4;

    iget-object v1, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$u4;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v2, 0x0

    iget v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$u4;->b:I

    invoke-static {v1, v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->m3(Lcom/nirenr/talkman/TalkManAccessibilityService;ZI)V

    return-void
.end method
