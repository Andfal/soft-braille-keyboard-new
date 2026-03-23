.class Lcom/nirenr/talkman/dialog/a$a;
.super Landroid/text/style/URLSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/a;->o(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/a$a;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a$a;->a:Lcom/nirenr/talkman/dialog/a;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ -]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/androlua/LuaService;->callPhone(Ljava/lang/String;)V

    return-void
.end method
