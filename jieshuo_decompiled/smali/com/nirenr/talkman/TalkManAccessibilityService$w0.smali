.class Lcom/nirenr/talkman/TalkManAccessibilityService$w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->startDebug(Landroid/view/accessibility/AccessibilityNodeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const-string p1, "\u65e5\u5fd7"

    :try_start_0
    iget-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v3, ".txt"

    invoke-static {p1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {p2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->b2(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/io/BufferedWriter;)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->w1(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$w0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string p2, "\u6253\u5f00\u65e5\u5fd7\u6587\u4ef6\u51fa\u9519\uff0c\u8bf7\u68c0\u67e5\u6743\u9650"

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
