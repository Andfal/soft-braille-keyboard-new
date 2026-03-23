.class public Lcom/nirenr/talkman/TalkManAccessibilityService$u7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "u7"
.end annotation


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$u7;->a:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$u7;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$u7;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$u7;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
